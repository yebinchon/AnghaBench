
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* device_set_viewport ) (int ,int,int,int,int) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,int,int,int,int) ;
 TYPE_2__* thread_graphics ;

void gs_set_viewport(int x, int y, int width, int height)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_set_viewport"))
  return;

 graphics->exports.device_set_viewport(graphics->device, x, y, width,
           height);
}
