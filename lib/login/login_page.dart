import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.pink[300],
            ),
            Container(
              width: context.screenWidth,
              height: context.percentHeight * 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                  bottomRight: Radius.circular(60.0),
                ),
              ),
              child: VStack(
                [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: SvgPicture.asset(
                      "assets/vaccum.svg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(4.0),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: "Enter Email Address",
                            labelText: "Email ID")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      autofocus: true,
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(4.0),
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          hintText: "Enter your Password",
                          labelText: "Password"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: "Forgot Password?"
                        .text
                        .sm
                        .textStyle(context.captionStyle)
                        .make()
                        .objectCenterRight(),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: "Log In".text.make(), //.objectCenter(),
                    color: Colors.pink,
                    textColor: Colors.white,
                  ).wh(context.screenWidth, 48).p16(),
                  SizedBox(height: 28),
                ],
              ),
            ),
            Positioned(
              bottom: 24.0,
              child: VStack(
                [
                  HStack(
                    [
                      SvgPicture.asset("assets/fb.svg"),
                      5.widthBox,
                      SvgPicture.asset("assets/google.svg"),
                      5.widthBox,
                      SvgPicture.asset("assets/twitter.svg"),
                    ],
                    alignment: MainAxisAlignment.center,
                  ).wFull(context),
                  16.heightBox,
                  "Don't Have an account? "
                      .richText
                      .white
                      .center
                      .withTextSpanChildren(
                    [
                      "Sign Up Here".textSpan.color(Colors.pink[900]).make(),
                    ],
                  ).makeCentered()
                ],
                alignment: MainAxisAlignment.center,
                crossAlignment: CrossAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
