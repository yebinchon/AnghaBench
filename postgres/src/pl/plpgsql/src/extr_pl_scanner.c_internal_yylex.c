
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int str; int core_yystype; } ;
struct TYPE_7__ {int lloc; TYPE_1__ lval; int leng; } ;
typedef TYPE_2__ TokenAuxData ;
struct TYPE_8__ {char* scanbuf; } ;


 int GREATER_GREATER ;
 int LESS_LESS ;
 int Op ;
 int PARAM ;
 TYPE_5__ core_yy ;
 int core_yylex (int *,int*,int ) ;
 size_t num_pushbacks ;
 int pstrdup (char const*) ;
 TYPE_2__* pushback_auxdata ;
 int* pushback_token ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char const*) ;
 int yyscanner ;

__attribute__((used)) static int
internal_yylex(TokenAuxData *auxdata)
{
 int token;
 const char *yytext;

 if (num_pushbacks > 0)
 {
  num_pushbacks--;
  token = pushback_token[num_pushbacks];
  *auxdata = pushback_auxdata[num_pushbacks];
 }
 else
 {
  token = core_yylex(&auxdata->lval.core_yystype,
         &auxdata->lloc,
         yyscanner);


  yytext = core_yy.scanbuf + auxdata->lloc;
  auxdata->leng = strlen(yytext);


  if (token == Op)
  {
   if (strcmp(auxdata->lval.str, "<<") == 0)
    token = LESS_LESS;
   else if (strcmp(auxdata->lval.str, ">>") == 0)
    token = GREATER_GREATER;
   else if (strcmp(auxdata->lval.str, "#") == 0)
    token = '#';
  }


  else if (token == PARAM)
  {
   auxdata->lval.str = pstrdup(yytext);
  }
 }

 return token;
}
