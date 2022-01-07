
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_shader_t ;
struct TYPE_4__ {int (* gs_shader_destroy ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int *) ;
 TYPE_2__* thread_graphics ;

void gs_shader_destroy(gs_shader_t *shader)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_shader_destroy"))
  return;
 if (!shader)
  return;

 graphics->exports.gs_shader_destroy(shader);
}
