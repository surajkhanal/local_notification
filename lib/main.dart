import 'package:flutter/material.dart';
import './chart.dart';
// import 'dart:isolate';

main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          backgroundColor: Color.fromRGBO(0, 48, 255, 1),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              height: 250.0,
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 48, 255)),
              child: Center(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                        width: 100.0,
                        height: 100.0,
                        margin: EdgeInsets.only(bottom: 10.0),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4.0,
                                color: Color.fromRGBO(0, 0, 255, 0.3)),
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                    "https://placehold.it/60x60")))), // Person Image
                    Text('Sandeep Neupane',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text('Personal Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 10.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w300,
                        )),
                  ],
                ),
              )),
            ),
            Container(
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 160.0,
                    child: Container(),
                  ),
                  Positioned(
                    top: -40.0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 30.0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 40.0),
                      color: Color.fromRGBO(255, 255, 255, 0.46),
                    ),
                  ),
                  Positioned(
                    top: -30.0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 30.0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.0),
                      color: Color.fromRGBO(255, 255, 255, 0.72),
                    ),
                  ),
                  Positioned(
                    top: -15.0,
                    left: 0,
                    width: MediaQuery.of(context).size.width,
                    height: 160.0,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, .1),
                              offset: Offset(1.0, 2.0),
                              blurRadius: 20.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cheque Received',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    '8',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0),
                                  ),
                                  Text(
                                    'today',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50.0,
                                width: 1.0,
                                child: Container(
                                  color: Colors.grey,
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    '40',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0),
                                  ),
                                  Text(
                                    'this week',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50.0,
                                width: 1.0,
                                child: Container(
                                  color: Colors.grey,
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    '180',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0),
                                  ),
                                  Text(
                                    'this month',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), // Stats
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .1),
                    offset: Offset(1.0, 5.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                    child: Text('Dashboard',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: SimpleTimeSeriesChart.withSampleData(),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('History',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ) //graph
          ],
        )));
  }
}
