
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vec2 {int dummy; } ;
typedef int gs_sparam_t ;
struct TYPE_4__ {int (* gs_shader_set_vec2 ) (int *,struct vec2 const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p2 (char*,int *,struct vec2 const*) ;
 int stub1 (int *,struct vec2 const*) ;
 TYPE_2__* thread_graphics ;

void gs_shader_set_vec2(gs_sparam_t *param, const struct vec2 *val)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p2("gs_shader_set_vec2", param, val))
  return;

 graphics->exports.gs_shader_set_vec2(param, val);
}
