
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep_var {int dummy; } ;
struct TYPE_2__ {size_t num; struct ep_var* array; } ;
struct ep_func {int written; char* ret_type; char* name; int contents; TYPE_1__ param_vars; } ;
struct effect_parser {int dummy; } ;
struct dstr {int dummy; } ;
struct darray {int dummy; } ;


 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_dstr (struct dstr*,int *) ;
 int ep_write_func_func_deps (struct effect_parser*,struct dstr*,struct ep_func*,struct darray*) ;
 int ep_write_func_param_deps (struct effect_parser*,struct dstr*,struct ep_func*,struct darray*) ;
 int ep_write_func_sampler_deps (struct effect_parser*,struct dstr*,struct ep_func*) ;
 int ep_write_func_struct_deps (struct effect_parser*,struct dstr*,struct ep_func*) ;
 int ep_write_var (struct dstr*,struct ep_var*) ;

__attribute__((used)) static void ep_write_func(struct effect_parser *ep, struct dstr *shader,
     struct ep_func *func, struct darray *used_params)
{
 size_t i;

 func->written = 1;

 ep_write_func_param_deps(ep, shader, func, used_params);
 ep_write_func_sampler_deps(ep, shader, func);
 ep_write_func_struct_deps(ep, shader, func);
 ep_write_func_func_deps(ep, shader, func, used_params);



 dstr_cat(shader, func->ret_type);
 dstr_cat(shader, " ");
 dstr_cat(shader, func->name);
 dstr_cat(shader, "(");

 for (i = 0; i < func->param_vars.num; i++) {
  struct ep_var *var = func->param_vars.array + i;

  if (i)
   dstr_cat(shader, ", ");
  ep_write_var(shader, var);
 }

 dstr_cat(shader, ")\n");
 dstr_cat_dstr(shader, &func->contents);
 dstr_cat(shader, "\n");
}
