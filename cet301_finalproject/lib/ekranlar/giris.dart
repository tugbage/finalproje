import 'package:flutter/material.dart';
import 'package:cet301_finalproject/main.dart';
import 'package:cet301_finalproject/details1.dart';


void main(){
  runApp(MaterialApp(
    home: Login(),
  ));

}

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(

          child:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Card(
                    elevation: 4.0,
                    color: Colors.orangeAccent,
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child:   CircleAvatar(
                              radius: 100.0,
                              backgroundImage:
                              NetworkImage('https://image.freepik.com/free-vector/baking-concept-with-food-ingredients-powder-food-recipe-bakery_1284-41677.jpg'),
                              backgroundColor: Colors.transparent,
                            ),
                          ),

                          new Container(
                            height: 25.0,
                          ),

                          TextFormField(
                            style: TextStyle(color: Color(0xFF000000)),
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,

                              ),

                              hintText: "E-MAIL",
                              hintStyle: TextStyle(
                                color: Color(0xFF9b9b9b),
                                fontSize: 18,
                                fontWeight: FontWeight.normal,

                              ),
                            ),
                          ),

                          TextFormField(
                            style: TextStyle(color: Color(0xFF000000)),
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,

                              ),

                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Color(0xFF9b9b9b),
                                fontSize: 18,
                                fontWeight: FontWeight.normal,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: FlatButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top:8,
                                    bottom:8,
                                    right:10,
                                    left:10
                                ),

                                child: Text(
                                  " LOG IN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    decoration:TextDecoration.none,

                                    fontWeight: FontWeight.normal,

                                  ),
                                ),
                              ),
                              color:Colors.orange[400],
                              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),


                            ),
                          )
                        ],
                      ),


                    ),
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
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Recipes",
          style: TextStyle(

            color: Colors.white,
            fontSize: 25,
            decoration:TextDecoration.none,

            fontWeight: FontWeight.normal,

          ),
        ),

      ),
      body:Center(
        child: RaisedButton(onPressed: (){
          Navigator.pop(context);
        },
          child: Text('Log In Page'),
        ),
      ),
    );
  }
}





