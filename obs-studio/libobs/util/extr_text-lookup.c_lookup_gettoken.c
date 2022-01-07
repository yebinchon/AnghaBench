
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {scalar_t__ len; int array; } ;
struct lexer {char* offset; } ;
struct TYPE_2__ {char* array; scalar_t__ len; } ;
struct base_token {scalar_t__ type; TYPE_1__ text; } ;


 scalar_t__ BASETOKEN_WHITESPACE ;
 int PARSE_WHITESPACE ;
 int base_token_clear (struct base_token*) ;
 scalar_t__ lexer_getbasetoken (struct lexer*,struct base_token*,int ) ;
 int lookup_getstringtoken (struct lexer*,struct strref*) ;
 int strref_clear (struct strref*) ;
 int strref_copy (struct strref*,TYPE_1__*) ;

__attribute__((used)) static bool lookup_gettoken(struct lexer *lex, struct strref *str)
{
 struct base_token temp;

 base_token_clear(&temp);
 strref_clear(str);

 while (lexer_getbasetoken(lex, &temp, PARSE_WHITESPACE)) {
  char ch = *temp.text.array;

  if (!str->array) {

   if (ch == '#') {
    while (ch != '\n' && ch != 0)
     ch = *(++lex->offset);
   } else if (temp.type == BASETOKEN_WHITESPACE) {
    strref_copy(str, &temp.text);
    break;
   } else {
    strref_copy(str, &temp.text);
    if (ch == '"') {
     lookup_getstringtoken(lex, str);
     break;
    } else if (ch == '=') {
     break;
    }
   }
  } else {
   if (temp.type == BASETOKEN_WHITESPACE ||
       *temp.text.array == '=') {
    lex->offset -= temp.text.len;
    break;
   }

   if (ch == '#') {
    lex->offset--;
    break;
   }

   str->len += temp.text.len;
  }
 }

 return (str->len != 0);
}
