
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* array; size_t len; } ;
struct TYPE_4__ {int len; } ;
struct cf_token {int type; TYPE_2__ unmerged_str; TYPE_1__ str; } ;
struct TYPE_6__ {char* offset; } ;
struct cf_lexer {int unexpected_eof; TYPE_3__ base_lexer; int write_offset; } ;


 int CFTOKEN_SPACETAB ;
 int cf_is_comment (char const*) ;
 int cf_pass_any_splices (char const**) ;
 int is_newline (char const) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static bool cf_lexer_process_comment(struct cf_lexer *lex,
         struct cf_token *out_token)
{
 const char *offset;

 if (!cf_is_comment(out_token->unmerged_str.array))
  return 0;

 offset = lex->base_lexer.offset;
 cf_pass_any_splices(&offset);

 strcpy(lex->write_offset++, " ");
 out_token->str.len = 1;

 if (*offset == '/') {
  while (*++offset && !is_newline(*offset))
   cf_pass_any_splices(&offset);

 } else if (*offset == '*') {
  bool was_star = 0;
  lex->unexpected_eof = 1;

  while (*++offset) {
   cf_pass_any_splices(&offset);

   if (was_star && *offset == '/') {
    offset++;
    lex->unexpected_eof = 0;
    break;
   } else {
    was_star = (*offset == '*');
   }
  }
 }

 out_token->unmerged_str.len +=
  (size_t)(offset - out_token->unmerged_str.array);
 out_token->type = CFTOKEN_SPACETAB;
 lex->base_lexer.offset = offset;

 return 1;
}
