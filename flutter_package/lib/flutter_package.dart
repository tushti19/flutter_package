library flutter_package;

import 'package:flutter/material.dart';

class BottomCards extends StatefulWidget {
  final String? cardTitle;
  final String? cardContent;
  final IconData? iconOne;
  final IconData? iconTwo;
  final IconData? iconThree;
  final Function()? iconOneOnPressed;
  final Function()? iconTwoOnPressed;
  final Function()? iconThreeOnPressed;
  final Color? iconOneColor;
  final Color? iconTwoColor;
  final Color? iconThreeColor;
  final Color? cardColor;
  final Color? cardContentColor;
  final Color? cardTitleColor;
  final Function()? onTap;
  final double width;
  final double height;

  BottomCards(
      {this.cardTitle = "Dart Package",
      this.cardContent =
          "Dart packages help us solve issues and create workarounds for problems without having to write the code ourselves from scratch.",
      this.iconOne = Icons.refresh_rounded,
      this.iconTwo = Icons.favorite,
      this.iconThree = Icons.paste,
      this.iconOneOnPressed,
      this.iconTwoOnPressed,
      this.iconThreeOnPressed,
      this.iconOneColor = Colors.green,
      this.iconTwoColor = Colors.red,
      this.iconThreeColor = Colors.black,
      this.cardColor = Colors.white,
      this.cardContentColor = Colors.black,
      this.cardTitleColor = Colors.purple,
      this.onTap,
      this.width = 500.0,
      this.height = 200.0});
  @override
  _BottomCardsState createState() => _BottomCardsState();
}

class _BottomCardsState extends State<BottomCards> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Container(
          color: widget.cardColor,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: widget.onTap ?? () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: widget.width - 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              widget.cardTitle!,
                              style: TextStyle(
                                  color: widget.cardTitleColor,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: Icon(
                                widget.iconOne,
                                color: widget.iconOneColor,
                              ),
                              onPressed: widget.iconOneOnPressed ?? () {},
                            ),
                            IconButton(
                              icon: Icon(widget.iconTwo,
                                  color: widget.iconTwoColor),
                              onPressed: widget.iconTwoOnPressed ?? () {},
                            ),
                            IconButton(
                              icon: Icon(widget.iconThree,
                                  color: widget.iconThreeColor),
                              onPressed: widget.iconThreeOnPressed ?? () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    widget.cardContent!,
                    style: TextStyle(color: widget.cardContentColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
