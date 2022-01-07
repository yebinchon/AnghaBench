
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* array; size_t len; } ;
struct TYPE_5__ {int len; int array; } ;
struct cf_token {int type; TYPE_2__ unmerged_str; TYPE_1__ str; } ;
struct TYPE_7__ {char* offset; } ;
struct cf_lexer {TYPE_3__ base_lexer; int write_offset; } ;
struct TYPE_8__ {char* array; scalar_t__ len; } ;
struct base_token {TYPE_4__ text; int type; } ;


 int BASETOKEN_ALPHA ;
 int PARSE_WHITESPACE ;
 int base_token_clear (struct base_token*) ;
 int base_token_copy (struct base_token*,struct base_token*) ;
 int cf_get_token_type (struct cf_token*,struct base_token*) ;
 scalar_t__ cf_is_splice (char*) ;
 scalar_t__ cf_is_token_break (struct base_token*,struct base_token*) ;
 scalar_t__ cf_lexer_process_comment (struct cf_lexer*,struct cf_token*) ;
 scalar_t__ cf_lexer_process_string (struct cf_lexer*,struct cf_token*) ;
 int cf_lexer_write_strref (struct cf_lexer*,TYPE_4__*) ;
 int cf_token_clear (struct cf_token*) ;
 scalar_t__ lexer_getbasetoken (TYPE_3__*,struct base_token*,int ) ;
 int newline_size (char*) ;

__attribute__((used)) static bool cf_lexer_nexttoken(struct cf_lexer *lex, struct cf_token *out_token)
{
 struct base_token token, start_token;
 bool wrote_data = 0;

 base_token_clear(&token);
 base_token_clear(&start_token);
 cf_token_clear(out_token);

 while (lexer_getbasetoken(&lex->base_lexer, &token, PARSE_WHITESPACE)) {

  if (*token.text.array == '_')
   token.type = BASETOKEN_ALPHA;


  if (cf_is_splice(token.text.array)) {
   lex->base_lexer.offset +=
    newline_size(token.text.array + 1);
   continue;
  }

  if (!wrote_data) {
   out_token->unmerged_str.array = token.text.array;
   out_token->str.array = lex->write_offset;


   if (cf_lexer_process_comment(lex, out_token))
    return 1;


   if (cf_lexer_process_string(lex, out_token))
    return 1;

   base_token_copy(&start_token, &token);
   wrote_data = 1;

  } else if (cf_is_token_break(&start_token, &token)) {
   lex->base_lexer.offset -= token.text.len;
   break;
  }


  cf_lexer_write_strref(lex, &token.text);
  out_token->str.len += token.text.len;
 }

 if (wrote_data) {
  out_token->unmerged_str.len = (size_t)(
   lex->base_lexer.offset - out_token->unmerged_str.array);
  out_token->type = cf_get_token_type(out_token, &start_token);
 }

 return wrote_data;
}
