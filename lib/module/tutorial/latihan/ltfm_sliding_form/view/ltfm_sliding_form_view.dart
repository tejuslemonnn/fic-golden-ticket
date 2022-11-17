import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSlidingFormView extends StatefulWidget {
  const LtfmSlidingFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmSlidingFormController controller) {
    controller.view = this;

    bool _validate = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSlidingForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                width: controller.submitted
                    ? 160
                    : MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Apply Leave",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      QDatePicker(
                        label: "Leave Date",
                        onChanged: (value) {},
                      ),
                      QTextField(
                        label: "Reason",
                        onChanged: (value) {},
                      ),
                      const Divider(),
                      ElevatedButton(
                        onPressed: () {
                          controller.submitted = !controller.submitted;
                          controller.update();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Center(
                            child: Text(
                              "Apply",
                            ),
                          ),
                        ),
                      )
                      //! 1. buat datepicker, atur label-nya menjadi
                      //? "Leave Date"

                      //! 2. Buat textarea, atur label-nya menjadi
                      //? "Reason"

                      //! 3. Tambahkan Divider

                      //! 4. Buat sebuah tombol:
                      //? width: MediaQuery.of(context).size.width,
                      //? height: 40

                      //! 5. Ketika di klik, tambahkan kode ini:
                      /*
                        controller.submitted = !controller.submitted;
                        controller.update();
                      */

                      //! 6. Jika Container mengecil ketika tombol di klik
                      //? maka task ini selesai!
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSlidingFormView> createState() => LtfmSlidingFormController();
}
