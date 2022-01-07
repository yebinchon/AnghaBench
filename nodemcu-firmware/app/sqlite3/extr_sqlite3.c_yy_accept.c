
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int yyerrcnt; scalar_t__ yytos; scalar_t__ yystack; } ;
typedef TYPE_1__ yyParser ;


 int assert (int) ;
 int fprintf (scalar_t__,char*,char*) ;
 int sqlite3ParserARG_FETCH ;
 int sqlite3ParserARG_STORE ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;

__attribute__((used)) static void yy_accept(
  yyParser *yypParser
){
  sqlite3ParserARG_FETCH;

  if( yyTraceFILE ){
    fprintf(yyTraceFILE,"%sAccept!\n",yyTracePrompt);
  }


  yypParser->yyerrcnt = -1;

  assert( yypParser->yytos==yypParser->yystack );




  sqlite3ParserARG_STORE;
}
