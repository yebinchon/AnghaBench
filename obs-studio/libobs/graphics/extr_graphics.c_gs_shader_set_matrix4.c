
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
typedef int gs_sparam_t ;
struct TYPE_4__ {int (* gs_shader_set_matrix4 ) (int *,struct matrix4 const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p2 (char*,int *,struct matrix4 const*) ;
 int stub1 (int *,struct matrix4 const*) ;
 TYPE_2__* thread_graphics ;

void gs_shader_set_matrix4(gs_sparam_t *param, const struct matrix4 *val)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p2("gs_shader_set_matrix4", param, val))
  return;

 graphics->exports.gs_shader_set_matrix4(param, val);
}
