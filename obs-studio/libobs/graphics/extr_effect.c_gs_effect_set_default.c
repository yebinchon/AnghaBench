
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; int array; } ;
struct TYPE_6__ {TYPE_1__ default_val; } ;
typedef TYPE_2__ gs_eparam_t ;


 int effect_setval_inline (TYPE_2__*,int ,int ) ;

void gs_effect_set_default(gs_eparam_t *param)
{
 effect_setval_inline(param, param->default_val.array,
        param->default_val.num);
}
