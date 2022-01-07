
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int gs_sparam_t ;
struct TYPE_4__ {scalar_t__ num; int * array; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ gs_shader_t ;


 int assert (int) ;

gs_sparam_t *gs_shader_get_param_by_idx(gs_shader_t *shader, uint32_t param)
{
 assert(param < shader->params.num);
 return shader->params.array + param;
}
