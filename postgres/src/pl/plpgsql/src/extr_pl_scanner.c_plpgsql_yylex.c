
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ident; int quoted; } ;
struct TYPE_8__ {void* keyword; TYPE_4__ word; int wdatum; int str; int cword; } ;
struct TYPE_7__ {int leng; scalar_t__ lloc; TYPE_3__ lval; } ;
typedef TYPE_1__ TokenAuxData ;
struct TYPE_10__ {scalar_t__ scanbuf; } ;


 int AT_STMT_START (int) ;
 int COLON_EQUALS ;
 void* GetScanKeyword (int,int *) ;
 int IDENT ;
 int PARAM ;
 int ScanKeywordLookup (int ,int *) ;
 int T_CWORD ;
 int T_DATUM ;
 int T_WORD ;
 int* UnreservedPLKeywordTokens ;
 int UnreservedPLKeywords ;
 TYPE_6__ core_yy ;
 int internal_yylex (TYPE_1__*) ;
 scalar_t__ plpgsql_parse_dblword (int ,int ,int *,int *) ;
 scalar_t__ plpgsql_parse_tripword (int ,int ,int ,int *,int *) ;
 scalar_t__ plpgsql_parse_word (int ,scalar_t__,int,int *,TYPE_4__*) ;
 int plpgsql_yyleng ;
 scalar_t__ plpgsql_yylloc ;
 TYPE_3__ plpgsql_yylval ;
 int plpgsql_yytoken ;
 int push_back_token (int,TYPE_1__*) ;

int
plpgsql_yylex(void)
{
 int tok1;
 TokenAuxData aux1;
 int kwnum;

 tok1 = internal_yylex(&aux1);
 if (tok1 == IDENT || tok1 == PARAM)
 {
  int tok2;
  TokenAuxData aux2;

  tok2 = internal_yylex(&aux2);
  if (tok2 == '.')
  {
   int tok3;
   TokenAuxData aux3;

   tok3 = internal_yylex(&aux3);
   if (tok3 == IDENT)
   {
    int tok4;
    TokenAuxData aux4;

    tok4 = internal_yylex(&aux4);
    if (tok4 == '.')
    {
     int tok5;
     TokenAuxData aux5;

     tok5 = internal_yylex(&aux5);
     if (tok5 == IDENT)
     {
      if (plpgsql_parse_tripword(aux1.lval.str,
               aux3.lval.str,
               aux5.lval.str,
               &aux1.lval.wdatum,
               &aux1.lval.cword))
       tok1 = T_DATUM;
      else
       tok1 = T_CWORD;
     }
     else
     {

      push_back_token(tok5, &aux5);
      push_back_token(tok4, &aux4);
      if (plpgsql_parse_dblword(aux1.lval.str,
              aux3.lval.str,
              &aux1.lval.wdatum,
              &aux1.lval.cword))
       tok1 = T_DATUM;
      else
       tok1 = T_CWORD;
     }
    }
    else
    {

     push_back_token(tok4, &aux4);
     if (plpgsql_parse_dblword(aux1.lval.str,
             aux3.lval.str,
             &aux1.lval.wdatum,
             &aux1.lval.cword))
      tok1 = T_DATUM;
     else
      tok1 = T_CWORD;
    }
   }
   else
   {

    push_back_token(tok3, &aux3);
    push_back_token(tok2, &aux2);
    if (plpgsql_parse_word(aux1.lval.str,
            core_yy.scanbuf + aux1.lloc,
            1,
            &aux1.lval.wdatum,
            &aux1.lval.word))
     tok1 = T_DATUM;
    else if (!aux1.lval.word.quoted &&
       (kwnum = ScanKeywordLookup(aux1.lval.word.ident,
             &UnreservedPLKeywords)) >= 0)
    {
     aux1.lval.keyword = GetScanKeyword(kwnum,
                &UnreservedPLKeywords);
     tok1 = UnreservedPLKeywordTokens[kwnum];
    }
    else
     tok1 = T_WORD;
   }
  }
  else
  {

   push_back_token(tok2, &aux2);
   if (plpgsql_parse_word(aux1.lval.str,
           core_yy.scanbuf + aux1.lloc,
           (!AT_STMT_START(plpgsql_yytoken) ||
         (tok2 == '=' || tok2 == COLON_EQUALS ||
          tok2 == '[')),
           &aux1.lval.wdatum,
           &aux1.lval.word))
    tok1 = T_DATUM;
   else if (!aux1.lval.word.quoted &&
      (kwnum = ScanKeywordLookup(aux1.lval.word.ident,
            &UnreservedPLKeywords)) >= 0)
   {
    aux1.lval.keyword = GetScanKeyword(kwnum,
               &UnreservedPLKeywords);
    tok1 = UnreservedPLKeywordTokens[kwnum];
   }
   else
    tok1 = T_WORD;
  }
 }
 else
 {
 }

 plpgsql_yylval = aux1.lval;
 plpgsql_yylloc = aux1.lloc;
 plpgsql_yyleng = aux1.leng;
 plpgsql_yytoken = tok1;
 return tok1;
}
