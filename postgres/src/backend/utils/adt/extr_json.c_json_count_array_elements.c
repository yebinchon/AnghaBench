
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lex_level; int * strval; } ;
typedef TYPE_1__ JsonLexContext ;


 int JSON_PARSE_ARRAY_NEXT ;
 int JSON_PARSE_ARRAY_START ;
 scalar_t__ JSON_TOKEN_ARRAY_END ;
 scalar_t__ JSON_TOKEN_ARRAY_START ;
 int JSON_TOKEN_COMMA ;
 scalar_t__ lex_accept (TYPE_1__*,int ,int *) ;
 int lex_expect (int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ lex_peek (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int nullSemAction ;
 int parse_array_element (TYPE_1__*,int *) ;

int
json_count_array_elements(JsonLexContext *lex)
{
 JsonLexContext copylex;
 int count;






 memcpy(&copylex, lex, sizeof(JsonLexContext));
 copylex.strval = ((void*)0);
 copylex.lex_level++;

 count = 0;
 lex_expect(JSON_PARSE_ARRAY_START, &copylex, JSON_TOKEN_ARRAY_START);
 if (lex_peek(&copylex) != JSON_TOKEN_ARRAY_END)
 {
  do
  {
   count++;
   parse_array_element(&copylex, &nullSemAction);
  }
  while (lex_accept(&copylex, JSON_TOKEN_COMMA, ((void*)0)));
 }
 lex_expect(JSON_PARSE_ARRAY_NEXT, &copylex, JSON_TOKEN_ARRAY_END);

 return count;
}
