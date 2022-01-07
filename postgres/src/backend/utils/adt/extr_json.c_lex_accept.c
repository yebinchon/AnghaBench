
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ token_type; int token_terminator; int token_start; TYPE_1__* strval; } ;
struct TYPE_5__ {int data; } ;
typedef scalar_t__ JsonTokenType ;
typedef TYPE_2__ JsonLexContext ;


 scalar_t__ JSON_TOKEN_STRING ;
 int json_lex (TYPE_2__*) ;
 int memcpy (char*,int,int) ;
 char* palloc (int) ;
 char* pstrdup (int ) ;

__attribute__((used)) static inline bool
lex_accept(JsonLexContext *lex, JsonTokenType token, char **lexeme)
{
 if (lex->token_type == token)
 {
  if (lexeme != ((void*)0))
  {
   if (lex->token_type == JSON_TOKEN_STRING)
   {
    if (lex->strval != ((void*)0))
     *lexeme = pstrdup(lex->strval->data);
   }
   else
   {
    int len = (lex->token_terminator - lex->token_start);
    char *tokstr = palloc(len + 1);

    memcpy(tokstr, lex->token_start, len);
    tokstr[len] = '\0';
    *lexeme = tokstr;
   }
  }
  json_lex(lex);
  return 1;
 }
 return 0;
}
