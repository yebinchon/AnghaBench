
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_sparam_t ;
struct TYPE_4__ {int (* gs_shader_set_val ) (int *,void const*,size_t) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p2 (char*,int *,void const*) ;
 int stub1 (int *,void const*,size_t) ;
 TYPE_2__* thread_graphics ;

void gs_shader_set_val(gs_sparam_t *param, const void *val, size_t size)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p2("gs_shader_set_val", param, val))
  return;

 graphics->exports.gs_shader_set_val(param, val, size);
}
