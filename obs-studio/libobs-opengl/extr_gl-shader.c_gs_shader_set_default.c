
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; int array; } ;
struct TYPE_6__ {TYPE_1__ def_value; } ;
typedef TYPE_2__ gs_sparam_t ;


 int gs_shader_set_val (TYPE_2__*,int ,int ) ;

void gs_shader_set_default(gs_sparam_t *param)
{
 gs_shader_set_val(param, param->def_value.array, param->def_value.num);
}
