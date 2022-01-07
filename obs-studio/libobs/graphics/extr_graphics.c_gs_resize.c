
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* device_resize ) (int ,int ,int ) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,int ,int ) ;
 TYPE_2__* thread_graphics ;

void gs_resize(uint32_t x, uint32_t y)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_resize"))
  return;

 graphics->exports.device_resize(graphics->device, x, y);
}
