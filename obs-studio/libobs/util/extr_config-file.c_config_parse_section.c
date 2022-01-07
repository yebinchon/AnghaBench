
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {int len; int array; } ;
struct lexer {int offset; } ;
struct config_section {int items; } ;
struct config_item {int value; int name; } ;
struct TYPE_2__ {char* array; } ;
struct base_token {scalar_t__ type; TYPE_1__ text; } ;


 scalar_t__ BASETOKEN_OTHER ;
 scalar_t__ BASETOKEN_WHITESPACE ;
 int PARSE_WHITESPACE ;
 int bstrdup_n (int ,int ) ;
 int bzalloc (int) ;
 int config_add_item (int *,struct strref*,struct strref*) ;
 int config_parse_string (struct lexer*,struct strref*,char) ;
 int darray_push_back (int,int *,struct config_item*) ;
 int is_newline (char) ;
 scalar_t__ lexer_getbasetoken (struct lexer*,struct base_token*,int ) ;
 int strref_clear (struct strref*) ;
 int strref_copy (struct strref*,TYPE_1__*) ;
 scalar_t__ strref_is_empty (struct strref*) ;

__attribute__((used)) static void config_parse_section(struct config_section *section,
     struct lexer *lex)
{
 struct base_token token;

 while (lexer_getbasetoken(lex, &token, PARSE_WHITESPACE)) {
  struct strref name, value;

  while (token.type == BASETOKEN_WHITESPACE) {
   if (!lexer_getbasetoken(lex, &token, PARSE_WHITESPACE))
    return;
  }

  if (token.type == BASETOKEN_OTHER) {
   if (*token.text.array == '#') {
    do {
     if (!lexer_getbasetoken(
          lex, &token,
          PARSE_WHITESPACE))
      return;
    } while (!is_newline(*token.text.array));

    continue;
   } else if (*token.text.array == '[') {
    lex->offset--;
    return;
   }
  }

  strref_copy(&name, &token.text);
  if (!config_parse_string(lex, &name, '='))
   continue;

  strref_clear(&value);
  config_parse_string(lex, &value, 0);

  if (strref_is_empty(&value)) {
   struct config_item item;
   item.name = bstrdup_n(name.array, name.len);
   item.value = bzalloc(1);
   darray_push_back(sizeof(struct config_item),
      &section->items, &item);
  } else {
   config_add_item(&section->items, &name, &value);
  }
 }
}
