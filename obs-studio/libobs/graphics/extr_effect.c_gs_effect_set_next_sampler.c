
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_samplerstate_t ;
struct TYPE_3__ {scalar_t__ type; int * next_sampler; } ;
typedef TYPE_1__ gs_eparam_t ;


 scalar_t__ GS_SHADER_PARAM_TEXTURE ;
 int LOG_ERROR ;
 int blog (int ,char*) ;

void gs_effect_set_next_sampler(gs_eparam_t *param, gs_samplerstate_t *sampler)
{
 if (!param) {
  blog(LOG_ERROR, "gs_effect_set_next_sampler: invalid param");
  return;
 }

 if (param->type == GS_SHADER_PARAM_TEXTURE)
  param->next_sampler = sampler;
}
