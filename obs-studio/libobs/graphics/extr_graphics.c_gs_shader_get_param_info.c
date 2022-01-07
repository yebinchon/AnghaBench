
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_shader_param_info {int dummy; } ;
typedef int gs_sparam_t ;
struct TYPE_4__ {int (* gs_shader_get_param_info ) (int const*,struct gs_shader_param_info*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p2 (char*,int const*,struct gs_shader_param_info*) ;
 int stub1 (int const*,struct gs_shader_param_info*) ;
 TYPE_2__* thread_graphics ;

void gs_shader_get_param_info(const gs_sparam_t *param,
         struct gs_shader_param_info *info)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p2("gs_shader_get_param_info", param, info))
  return;

 graphics->exports.gs_shader_get_param_info(param, info);
}
