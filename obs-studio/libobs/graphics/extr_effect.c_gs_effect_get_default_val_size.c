
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; } ;
struct TYPE_5__ {TYPE_1__ default_val; } ;
typedef TYPE_2__ gs_eparam_t ;



size_t gs_effect_get_default_val_size(gs_eparam_t *param)
{
 return param ? param->default_val.num : 0;
}
