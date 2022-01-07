
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gs_shader_param_info {int name; int type; } ;
struct TYPE_3__ {int name; int type; } ;
typedef TYPE_1__ gs_sparam_t ;



void gs_shader_get_param_info(const gs_sparam_t *param,
         struct gs_shader_param_info *info)
{
 info->type = param->type;
 info->name = param->name;
}
