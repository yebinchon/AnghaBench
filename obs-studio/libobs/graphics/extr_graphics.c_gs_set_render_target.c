
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_zstencil_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int (* device_set_render_target ) (int ,int *,int *) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,int *,int *) ;
 TYPE_2__* thread_graphics ;

void gs_set_render_target(gs_texture_t *tex, gs_zstencil_t *zstencil)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_set_render_target"))
  return;

 graphics->exports.device_set_render_target(graphics->device, tex,
         zstencil);
}
