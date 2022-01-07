
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenAuxData ;


 int internal_yylex (int *) ;
 int push_back_token (int,int *) ;

int
plpgsql_peek(void)
{
 int tok1;
 TokenAuxData aux1;

 tok1 = internal_yylex(&aux1);
 push_back_token(tok1, &aux1);
 return tok1;
}
