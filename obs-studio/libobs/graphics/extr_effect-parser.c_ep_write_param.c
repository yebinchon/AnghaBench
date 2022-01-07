
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_param {int written; char* name; char* type; scalar_t__ array_count; scalar_t__ is_uniform; scalar_t__ is_const; } ;
struct dstr {int dummy; } ;
struct darray {int dummy; } ;


 int darray_push_back (int,struct darray*,struct dstr*) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_catf (struct dstr*,char*,scalar_t__) ;
 int dstr_init_copy (struct dstr*,char*) ;

__attribute__((used)) static inline void ep_write_param(struct dstr *shader, struct ep_param *param,
      struct darray *used_params)
{
 if (param->written)
  return;

 if (param->is_const) {
  dstr_cat(shader, "const ");
 } else if (param->is_uniform) {
  struct dstr new;
  dstr_init_copy(&new, param->name);
  darray_push_back(sizeof(struct dstr), used_params, &new);

  dstr_cat(shader, "uniform ");
 }

 dstr_cat(shader, param->type);
 dstr_cat(shader, " ");
 dstr_cat(shader, param->name);

 if (param->array_count)
  dstr_catf(shader, "[%u]", param->array_count);

 dstr_cat(shader, ";\n");

 param->written = 1;
}
