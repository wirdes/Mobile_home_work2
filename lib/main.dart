import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('All Products'),
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding:
                const EdgeInsets.only(left: 2, top: 10, right: 2, bottom: 10),
            children: <Widget>[
              /* Buradaki veriler  https://fakestoreapi.com/ sitesinde public apiden alındı */
              ProductBox(
                  name: "Fjallraven",
                  price: 109.95,
                  description:
                      "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
                  image: "81fPKd-2AYL._AC_SL1500_.jpg"),
              ProductBox(
                name: "Slim Fit T-Shirts",
                description: "Slim-fitting style, contrast raglan long sleeve.",
                price: 22.3,
                image: "71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
              ),
              ProductBox(
                  name: "Mens Cotton Jacket",
                  description:
                      "Great outerwear jackets for Spring/Autumn/Winter.",
                  price: 55.99,
                  image: "71li-ujtlUL._AC_UX679_.jpg"),
              ProductBox(
                  name: "Mens Casual Slim Fit",
                  description:
                      "The color could be slightly different between on the screen and in practice.",
                  price: 15.99,
                  image: "71YXzeOuslL._AC_UY879_.jpg"),
              ProductBox(
                  name: "Silver Dragon Station Chain Bracelet",
                  description: "From our Legends Collection,",
                  price: 695,
                  image: "71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg"),
              ProductBox(
                  name: "Solid Gold Petite Micropave",
                  description:
                      "Satisfaction Guaranteed. Return or exchange any order within 30 days",
                  price: 168,
                  image: "61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg"),
            ],
          ),
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key = const Key("any_key"),
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final double price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 15),
      height: 275,
      width: double.infinity,
      decoration: BoxDecoration(
        // ignore: unnecessary_new
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 5),
            child: Image(
              image: AssetImage('assets/img/$image'),
              height: 150,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
            child: Text(
              description,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 10, bottom: 0),
                  child: Text("$price ₺",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold))),
            ],
          )
        ],
      ),
    );
  }
}
