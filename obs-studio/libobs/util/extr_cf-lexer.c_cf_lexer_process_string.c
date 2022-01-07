
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* array; } ;
struct cf_token {TYPE_1__ unmerged_str; } ;
struct cf_lexer {int dummy; } ;


 int cf_lexer_getstrtoken (struct cf_lexer*,struct cf_token*,char,int) ;
 scalar_t__ cf_lexer_is_include (struct cf_lexer*) ;

__attribute__((used)) static bool cf_lexer_process_string(struct cf_lexer *lex,
        struct cf_token *out_token)
{
 char ch = *out_token->unmerged_str.array;

 if (ch == '<' && cf_lexer_is_include(lex)) {
  cf_lexer_getstrtoken(lex, out_token, '>', 0);
  return 1;

 } else if (ch == '"' || ch == '\'') {
  cf_lexer_getstrtoken(lex, out_token, ch,
         !cf_lexer_is_include(lex));
  return 1;
 }

 return 0;
}
