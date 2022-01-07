
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_ID ;
 int TK_JOIN_KW ;
 int TK_OVER ;
 int TK_SPACE ;
 int TK_STRING ;
 int TK_WINDOW ;
 int sqlite3GetToken (unsigned char const*,int*) ;
 int sqlite3ParserFallback (int) ;

__attribute__((used)) static int getToken(const unsigned char **pz){
  const unsigned char *z = *pz;
  int t;
  do {
    z += sqlite3GetToken(z, &t);
  }while( t==TK_SPACE );
  if( t==TK_ID
   || t==TK_STRING
   || t==TK_JOIN_KW
   || t==TK_WINDOW
   || t==TK_OVER
   || sqlite3ParserFallback(t)==TK_ID
  ){
    t = TK_ID;
  }
  *pz = z;
  return t;
}
