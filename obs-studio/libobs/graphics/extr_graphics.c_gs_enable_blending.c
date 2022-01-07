
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* device_enable_blending ) (int ,int) ;} ;
struct TYPE_5__ {int enabled; } ;
struct TYPE_7__ {int device; TYPE_2__ exports; TYPE_1__ cur_blend_state; } ;
typedef TYPE_3__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,int) ;
 TYPE_3__* thread_graphics ;

void gs_enable_blending(bool enable)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_enable_blending"))
  return;

 graphics->cur_blend_state.enabled = enable;
 graphics->exports.device_enable_blending(graphics->device, enable);
}
