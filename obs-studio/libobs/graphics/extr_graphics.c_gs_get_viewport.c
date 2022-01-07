
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_rect {int dummy; } ;
struct TYPE_4__ {int (* device_get_viewport ) (int ,struct gs_rect*) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,struct gs_rect*) ;
 int stub1 (int ,struct gs_rect*) ;
 TYPE_2__* thread_graphics ;

void gs_get_viewport(struct gs_rect *rect)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_get_viewport", rect))
  return;

 graphics->exports.device_get_viewport(graphics->device, rect);
}
