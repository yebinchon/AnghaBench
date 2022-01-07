
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ gs_shader_t ;



int gs_shader_get_num_params(const gs_shader_t *shader)
{
 return (int)shader->params.num;
}
