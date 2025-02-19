
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ep_param {int dummy; } ;
struct ep_func {int dummy; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;
struct darray {struct cf_token* array; } ;
struct TYPE_5__ {int * array; } ;
struct cf_token {scalar_t__ type; TYPE_1__ str; } ;


 scalar_t__ CFTOKEN_NONE ;
 int dstr_cat_strref (struct dstr*,TYPE_1__*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 struct ep_func* ep_getfunc_strref (struct effect_parser*,TYPE_1__*) ;
 struct ep_param* ep_getparam_strref (struct effect_parser*,TYPE_1__*) ;
 int ep_reset_written (struct effect_parser*) ;
 int ep_write_func (struct effect_parser*,struct dstr*,struct ep_func*,struct darray*) ;
 int ep_write_main (struct effect_parser*,struct dstr*,struct ep_func*,struct dstr*) ;
 int ep_write_param (struct dstr*,struct ep_param*,struct darray*) ;
 scalar_t__ is_whitespace (int ) ;
 scalar_t__ strref_cmp (TYPE_1__*,char*) ;

__attribute__((used)) static void ep_makeshaderstring(struct effect_parser *ep, struct dstr *shader,
    struct darray *shader_call,
    struct darray *used_params)
{
 struct cf_token *token = shader_call->array;
 struct cf_token *func_name;
 struct ep_func *func;
 struct dstr call_str;

 dstr_init(&call_str);

 if (!token)
  return;

 while (token->type != CFTOKEN_NONE && is_whitespace(*token->str.array))
  token++;

 if (token->type == CFTOKEN_NONE || strref_cmp(&token->str, "NULL") == 0)
  return;

 func_name = token;

 while (token->type != CFTOKEN_NONE) {
  struct ep_param *param = ep_getparam_strref(ep, &token->str);
  if (param)
   ep_write_param(shader, param, used_params);

  dstr_cat_strref(&call_str, &token->str);
  token++;
 }

 func = ep_getfunc_strref(ep, &func_name->str);
 if (!func)
  return;

 ep_write_func(ep, shader, func, used_params);
 ep_write_main(ep, shader, func, &call_str);

 dstr_free(&call_str);

 ep_reset_written(ep);
}
