
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_func {char* ret_type; char* mapping; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;


 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_dstr (struct dstr*,struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;
 int dstr_init_copy_dstr (struct dstr*,struct dstr*) ;
 int ep_write_main_params (struct effect_parser*,struct dstr*,struct dstr*,struct ep_func*) ;

__attribute__((used)) static void ep_write_main(struct effect_parser *ep, struct dstr *shader,
     struct ep_func *func, struct dstr *call_str)
{
 struct dstr param_str;
 struct dstr adjusted_call;

 dstr_init(&param_str);
 dstr_init_copy_dstr(&adjusted_call, call_str);

 dstr_cat(shader, "\n");
 dstr_cat(shader, func->ret_type);
 dstr_cat(shader, " main(");

 ep_write_main_params(ep, shader, &param_str, func);

 dstr_cat(shader, ")");
 if (func->mapping) {
  dstr_cat(shader, " : ");
  dstr_cat(shader, func->mapping);
 }

 dstr_cat(shader, "\n{\n\treturn ");
 dstr_cat_dstr(shader, &adjusted_call);
 dstr_cat(shader, "\n}\n");

 dstr_free(&adjusted_call);
 dstr_free(&param_str);
}
