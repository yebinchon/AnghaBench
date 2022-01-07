
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {int dummy; } ;
struct lexer {int dummy; } ;
struct TYPE_2__ {char* array; } ;
struct base_token {TYPE_1__ text; } ;


 int PARSE_WHITESPACE ;
 int base_token_clear (struct base_token*) ;
 scalar_t__ is_newline (char) ;
 scalar_t__ lexer_getbasetoken (struct lexer*,struct base_token*,int ) ;
 int remove_ref_whitespace (struct strref*) ;
 int strref_add (struct strref*,TYPE_1__*) ;

__attribute__((used)) static bool config_parse_string(struct lexer *lex, struct strref *ref, char end)
{
 bool success = end != 0;
 struct base_token token;
 base_token_clear(&token);

 while (lexer_getbasetoken(lex, &token, PARSE_WHITESPACE)) {
  if (end) {
   if (*token.text.array == end) {
    success = 1;
    break;
   } else if (is_newline(*token.text.array)) {
    success = 0;
    break;
   }
  } else {
   if (is_newline(*token.text.array)) {
    success = 1;
    break;
   }
  }

  strref_add(ref, &token.text);
 }

 remove_ref_whitespace(ref);
 return success;
}
