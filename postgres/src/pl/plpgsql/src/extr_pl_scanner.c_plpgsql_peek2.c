
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lloc; } ;
typedef TYPE_1__ TokenAuxData ;


 int internal_yylex (TYPE_1__*) ;
 int push_back_token (int,TYPE_1__*) ;

void
plpgsql_peek2(int *tok1_p, int *tok2_p, int *tok1_loc, int *tok2_loc)
{
 int tok1,
    tok2;
 TokenAuxData aux1,
    aux2;

 tok1 = internal_yylex(&aux1);
 tok2 = internal_yylex(&aux2);

 *tok1_p = tok1;
 if (tok1_loc)
  *tok1_loc = aux1.lloc;
 *tok2_p = tok2;
 if (tok2_loc)
  *tok2_loc = aux2.lloc;

 push_back_token(tok2, &aux2);
 push_back_token(tok1, &aux1);
}
