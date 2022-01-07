
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_rect {int dummy; } ;
struct TYPE_4__ {int (* device_set_scissor_rect ) (int ,struct gs_rect const*) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,struct gs_rect const*) ;
 TYPE_2__* thread_graphics ;

void gs_set_scissor_rect(const struct gs_rect *rect)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_set_scissor_rect"))
  return;

 graphics->exports.device_set_scissor_rect(graphics->device, rect);
}
