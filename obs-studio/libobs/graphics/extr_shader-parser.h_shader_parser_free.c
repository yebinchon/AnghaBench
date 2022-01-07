
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct shader_parser {TYPE_1__ funcs; TYPE_1__ samplers; TYPE_1__ structs; TYPE_1__ params; int cfp; } ;


 int cf_parser_free (int *) ;
 int da_free (TYPE_1__) ;
 int shader_func_free (scalar_t__) ;
 int shader_sampler_free (scalar_t__) ;
 int shader_struct_free (scalar_t__) ;
 int shader_var_free (scalar_t__) ;

__attribute__((used)) static inline void shader_parser_free(struct shader_parser *sp)
{
 size_t i;

 for (i = 0; i < sp->params.num; i++)
  shader_var_free(sp->params.array + i);
 for (i = 0; i < sp->structs.num; i++)
  shader_struct_free(sp->structs.array + i);
 for (i = 0; i < sp->samplers.num; i++)
  shader_sampler_free(sp->samplers.array + i);
 for (i = 0; i < sp->funcs.num; i++)
  shader_func_free(sp->funcs.array + i);

 cf_parser_free(&sp->cfp);
 da_free(sp->params);
 da_free(sp->structs);
 da_free(sp->samplers);
 da_free(sp->funcs);
}
