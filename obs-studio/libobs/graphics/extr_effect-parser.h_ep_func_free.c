
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ep_func {TYPE_1__ sampler_deps; TYPE_1__ param_deps; TYPE_1__ struct_deps; TYPE_1__ func_deps; TYPE_1__ param_vars; int contents; int mapping; int ret_type; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int dstr_free (int *) ;
 int ep_var_free (scalar_t__) ;

__attribute__((used)) static inline void ep_func_free(struct ep_func *epf)
{
 size_t i;
 for (i = 0; i < epf->param_vars.num; i++)
  ep_var_free(epf->param_vars.array + i);

 bfree(epf->name);
 bfree(epf->ret_type);
 bfree(epf->mapping);
 dstr_free(&epf->contents);
 da_free(epf->param_vars);
 da_free(epf->func_deps);
 da_free(epf->struct_deps);
 da_free(epf->param_deps);
 da_free(epf->sampler_deps);
}
