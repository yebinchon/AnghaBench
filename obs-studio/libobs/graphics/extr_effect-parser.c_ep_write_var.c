
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_var {scalar_t__ var_type; char* type; char* name; char* mapping; } ;
struct dstr {int dummy; } ;


 scalar_t__ EP_VAR_INOUT ;
 scalar_t__ EP_VAR_OUT ;
 scalar_t__ EP_VAR_UNIFORM ;
 int dstr_cat (struct dstr*,char*) ;

__attribute__((used)) static inline void ep_write_var(struct dstr *shader, struct ep_var *var)
{
 if (var->var_type == EP_VAR_INOUT)
  dstr_cat(shader, "inout ");
 else if (var->var_type == EP_VAR_OUT)
  dstr_cat(shader, "out ");
 else if (var->var_type == EP_VAR_UNIFORM)
  dstr_cat(shader, "uniform ");



 dstr_cat(shader, var->type);
 dstr_cat(shader, " ");
 dstr_cat(shader, var->name);

 if (var->mapping) {
  dstr_cat(shader, " : ");
  dstr_cat(shader, var->mapping);
 }
}
