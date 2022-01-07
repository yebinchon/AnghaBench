
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* device_draw ) (int ,int,int ,int ) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_draw_mode { ____Placeholder_gs_draw_mode } gs_draw_mode ;


 int gs_valid (char*) ;
 int stub1 (int ,int,int ,int ) ;
 TYPE_2__* thread_graphics ;

void gs_draw(enum gs_draw_mode draw_mode, uint32_t start_vert,
      uint32_t num_verts)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_draw"))
  return;

 graphics->exports.device_draw(graphics->device, draw_mode, start_vert,
          num_verts);
}
