
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ yyidx; } ;
typedef TYPE_1__ yyParser ;


 int fprintf (scalar_t__,char*,char*) ;
 int sqlite3ParserARG_FETCH ;
 int sqlite3ParserARG_STORE ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;
 int yy_pop_parser_stack (TYPE_1__*) ;

__attribute__((used)) static void yy_accept(
  yyParser *yypParser
){
  sqlite3ParserARG_FETCH;

  if( yyTraceFILE ){
    fprintf(yyTraceFILE,"%sAccept!\n",yyTracePrompt);
  }

  while( yypParser->yyidx>=0 ) yy_pop_parser_stack(yypParser);


  sqlite3ParserARG_STORE;
}
