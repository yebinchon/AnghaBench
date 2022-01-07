
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* array; } ;
struct cf_token {TYPE_2__ str; } ;
struct TYPE_3__ {size_t num; struct cf_token* array; } ;
struct cf_lexer {TYPE_1__ tokens; } ;


 int is_newline (char) ;
 scalar_t__ is_space_or_tab (char) ;
 scalar_t__ strref_cmp (TYPE_2__*,char*) ;

__attribute__((used)) static bool cf_lexer_is_include(struct cf_lexer *lex)
{
 bool found_include_import = 0;
 bool found_preprocessor = 0;
 size_t i;

 for (i = lex->tokens.num; i > 0; i--) {
  struct cf_token *token = lex->tokens.array + (i - 1);

  if (is_space_or_tab(*token->str.array))
   continue;

  if (!found_include_import) {
   if (strref_cmp(&token->str, "include") != 0 &&
       strref_cmp(&token->str, "import") != 0)
    break;

   found_include_import = 1;

  } else if (!found_preprocessor) {
   if (*token->str.array != '#')
    break;

   found_preprocessor = 1;

  } else {
   return is_newline(*token->str.array);
  }
 }


 return found_preprocessor && found_include_import;
}
