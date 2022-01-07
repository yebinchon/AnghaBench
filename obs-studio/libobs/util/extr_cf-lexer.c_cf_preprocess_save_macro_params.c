
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct macro_params {int params; } ;
struct macro_param {int name; } ;
struct TYPE_3__ {char* array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;
struct cf_preprocessor {int dummy; } ;
struct TYPE_4__ {size_t num; } ;
struct cf_def {TYPE_2__ params; } ;


 scalar_t__ CFTOKEN_OTHER ;
 int cf_adderror (struct cf_preprocessor*,struct cf_token*,char*,int *,int *,int *) ;
 int cf_adderror_expecting (struct cf_preprocessor*,struct cf_token*,char*) ;
 int cf_def_getparam (struct cf_def const*,size_t) ;
 int cf_preprocess_save_macro_param (struct cf_preprocessor*,struct cf_token**,struct macro_param*,struct cf_token const*,struct macro_params const*) ;
 int cf_token_copy (int *,int ) ;
 int da_push_back (int ,struct macro_param*) ;
 int macro_param_free (struct macro_param*) ;
 int macro_param_init (struct macro_param*) ;
 int next_token (struct cf_token**,int) ;
 scalar_t__ param_is_whitespace (struct macro_param*) ;

__attribute__((used)) static void cf_preprocess_save_macro_params(
 struct cf_preprocessor *pp, struct cf_token **p_cur_token,
 const struct cf_def *def, const struct cf_token *base,
 const struct macro_params *cur_params, struct macro_params *dst)
{
 struct cf_token *cur_token = *p_cur_token;
 size_t count = 0;

 next_token(&cur_token, 0);
 if (cur_token->type != CFTOKEN_OTHER || *cur_token->str.array != '(') {
  cf_adderror_expecting(pp, cur_token, "'('");
  goto exit;
 }

 do {
  struct macro_param param;
  macro_param_init(&param);
  cur_token++;
  count++;

  cf_preprocess_save_macro_param(pp, &cur_token, &param, base,
            cur_params);
  if (cur_token->type != CFTOKEN_OTHER ||
      (*cur_token->str.array != ',' &&
       *cur_token->str.array != ')')) {

   macro_param_free(&param);
   cf_adderror_expecting(pp, cur_token, "',' or ')'");
   goto exit;
  }

  if (param_is_whitespace(&param)) {

   if (count == 1 && !def->params.num &&
       *cur_token->str.array == ')') {
    macro_param_free(&param);
    break;
   }
  }

  if (count <= def->params.num) {
   cf_token_copy(&param.name,
          cf_def_getparam(def, count - 1));
   da_push_back(dst->params, &param);
  } else {
   macro_param_free(&param);
  }
 } while (*cur_token->str.array != ')');

 if (count != def->params.num)
  cf_adderror(pp, cur_token,
       "Mismatching number of macro parameters", ((void*)0),
       ((void*)0), ((void*)0));

exit:
 *p_cur_token = cur_token;
}
