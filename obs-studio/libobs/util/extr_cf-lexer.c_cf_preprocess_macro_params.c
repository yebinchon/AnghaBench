
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct cf_preprocessor {int dummy; } ;
struct cf_def {int macro; } ;


 scalar_t__ CFTOKEN_NAME ;
 scalar_t__ CFTOKEN_OTHER ;
 int cf_adderror_expecting (struct cf_preprocessor*,struct cf_token*,char*) ;
 int cf_def_addparam (struct cf_def*,struct cf_token*) ;
 int go_to_newline (struct cf_token**) ;
 int next_token (struct cf_token**,int) ;

__attribute__((used)) static bool cf_preprocess_macro_params(struct cf_preprocessor *pp,
           struct cf_def *def,
           struct cf_token **p_cur_token)
{
 struct cf_token *cur_token = *p_cur_token;
 bool success = 0;
 def->macro = 1;

 do {
  next_token(&cur_token, 1);
  if (cur_token->type != CFTOKEN_NAME) {
   cf_adderror_expecting(pp, cur_token, "identifier");
   go_to_newline(&cur_token);
   goto exit;
  }

  cf_def_addparam(def, cur_token);

  next_token(&cur_token, 1);
  if (cur_token->type != CFTOKEN_OTHER ||
      (*cur_token->str.array != ',' &&
       *cur_token->str.array != ')')) {

   cf_adderror_expecting(pp, cur_token, "',' or ')'");
   go_to_newline(&cur_token);
   goto exit;
  }
 } while (*cur_token->str.array != ')');


 next_token(&cur_token, 1);
 success = 1;

exit:
 *p_cur_token = cur_token;
 return success;
}
