
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* input; char* token_terminator; char* line_start; int line_number; int input_length; int strval; } ;
typedef TYPE_1__ JsonLexContext ;


 int makeStringInfo () ;
 TYPE_1__* palloc0 (int) ;

JsonLexContext *
makeJsonLexContextCstringLen(char *json, int len, bool need_escapes)
{
 JsonLexContext *lex = palloc0(sizeof(JsonLexContext));

 lex->input = lex->token_terminator = lex->line_start = json;
 lex->line_number = 1;
 lex->input_length = len;
 if (need_escapes)
  lex->strval = makeStringInfo();
 return lex;
}
