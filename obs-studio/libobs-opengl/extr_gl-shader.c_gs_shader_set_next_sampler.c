
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next_sampler; } ;
typedef TYPE_1__ gs_sparam_t ;
typedef int gs_samplerstate_t ;



void gs_shader_set_next_sampler(gs_sparam_t *param, gs_samplerstate_t *sampler)
{
 param->next_sampler = sampler;
}
