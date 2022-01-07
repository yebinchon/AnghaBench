
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {char* array; scalar_t__ len; } ;
struct lexer {char* offset; } ;



__attribute__((used)) static void lookup_getstringtoken(struct lexer *lex, struct strref *token)
{
 const char *temp = lex->offset;
 bool was_backslash = 0;

 while (*temp != 0 && *temp != '\n') {
  if (!was_backslash) {
   if (*temp == '\\') {
    was_backslash = 1;
   } else if (*temp == '"') {
    temp++;
    break;
   }
  } else {
   was_backslash = 0;
  }

  ++temp;
 }

 token->len += (size_t)(temp - lex->offset);

 if (*token->array == '"') {
  token->array++;
  token->len--;

  if (*(temp - 1) == '"')
   token->len--;
 }

 lex->offset = temp;
}
