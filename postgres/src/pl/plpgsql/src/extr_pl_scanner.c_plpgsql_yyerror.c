
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* scanbuf; } ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int _ (char const*) ;
 TYPE_1__ core_yy ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int plpgsql_scanner_errposition (int) ;
 size_t plpgsql_yyleng ;
 int plpgsql_yylloc ;

void
plpgsql_yyerror(const char *message)
{
 char *yytext = core_yy.scanbuf + plpgsql_yylloc;

 if (*yytext == '\0')
 {
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),

     errmsg("%s at end of input", _(message)),
     plpgsql_scanner_errposition(plpgsql_yylloc)));
 }
 else
 {






  yytext[plpgsql_yyleng] = '\0';

  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),

     errmsg("%s at or near \"%s\"", _(message), yytext),
     plpgsql_scanner_errposition(plpgsql_yylloc)));
 }
}
