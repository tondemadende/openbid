import 'package:flutter/material.dart';
import 'package:open_bid/widgets/custom_widget.dart';


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: height*0.15,
                          width: height*0.15,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        Container(
                          height: height*0.2,
                          width: height*0.2,
                          decoration: BoxDecoration(

                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        Container(
                          height: height*0.25,
                          width: height*0.25,
                          decoration: BoxDecoration(

                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        )
                      ],

                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: height*0.1,),
                    Center(
                      child: SizedBox(
                        width: width*0.5,
                        child: Image.asset("assets/logo1.png"),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    CustomTextField(
                      headingText: 'Email Address',
                      hintText: 'Email Address',

                    ),
                    const SizedBox(height: 20,),
                    CustomTextField(
                      headingText: 'Password',
                      hintText: 'Password',
                    )
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
