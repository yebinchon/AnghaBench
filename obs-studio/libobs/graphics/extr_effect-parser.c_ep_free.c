
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct effect_parser {TYPE_1__ techniques; TYPE_1__ samplers; TYPE_1__ funcs; TYPE_1__ structs; TYPE_1__ params; int cfp; int * cur_pass; } ;


 int cf_parser_free (int *) ;
 int da_free (TYPE_1__) ;
 int ep_func_free (scalar_t__) ;
 int ep_param_free (scalar_t__) ;
 int ep_sampler_free (scalar_t__) ;
 int ep_struct_free (scalar_t__) ;
 int ep_technique_free (scalar_t__) ;

void ep_free(struct effect_parser *ep)
{
 size_t i;
 for (i = 0; i < ep->params.num; i++)
  ep_param_free(ep->params.array + i);
 for (i = 0; i < ep->structs.num; i++)
  ep_struct_free(ep->structs.array + i);
 for (i = 0; i < ep->funcs.num; i++)
  ep_func_free(ep->funcs.array + i);
 for (i = 0; i < ep->samplers.num; i++)
  ep_sampler_free(ep->samplers.array + i);
 for (i = 0; i < ep->techniques.num; i++)
  ep_technique_free(ep->techniques.array + i);

 ep->cur_pass = ((void*)0);
 cf_parser_free(&ep->cfp);
 da_free(ep->params);
 da_free(ep->structs);
 da_free(ep->funcs);
 da_free(ep->samplers);
 da_free(ep->techniques);
}
