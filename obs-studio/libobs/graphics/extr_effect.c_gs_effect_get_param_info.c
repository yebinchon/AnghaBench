
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gs_effect_param_info {int type; int name; } ;
struct TYPE_3__ {int type; int name; } ;
typedef TYPE_1__ gs_eparam_t ;



void gs_effect_get_param_info(const gs_eparam_t *param,
         struct gs_effect_param_info *info)
{
 if (!param)
  return;

 info->name = param->name;
 info->type = param->type;
}
