
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_sparam_t ;
struct TYPE_4__ {int (* gs_shader_set_int ) (int *,int) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int *) ;
 int stub1 (int *,int) ;
 TYPE_2__* thread_graphics ;

void gs_shader_set_int(gs_sparam_t *param, int val)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_shader_set_int", param))
  return;

 graphics->exports.gs_shader_set_int(param, val);
}
