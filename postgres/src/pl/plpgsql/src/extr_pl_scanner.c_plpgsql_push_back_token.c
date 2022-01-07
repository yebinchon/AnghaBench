
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int leng; int lloc; int lval; } ;
typedef TYPE_1__ TokenAuxData ;


 int plpgsql_yyleng ;
 int plpgsql_yylloc ;
 int plpgsql_yylval ;
 int push_back_token (int,TYPE_1__*) ;

void
plpgsql_push_back_token(int token)
{
 TokenAuxData auxdata;

 auxdata.lval = plpgsql_yylval;
 auxdata.lloc = plpgsql_yylloc;
 auxdata.leng = plpgsql_yyleng;
 push_back_token(token, &auxdata);
}
