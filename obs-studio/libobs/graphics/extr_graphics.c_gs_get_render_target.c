
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_4__ {int * (* device_get_render_target ) (int ) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int * stub1 (int ) ;
 TYPE_2__* thread_graphics ;

gs_texture_t *gs_get_render_target(void)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_get_render_target"))
  return ((void*)0);

 return graphics->exports.device_get_render_target(graphics->device);
}
