
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* device_set_cull_mode ) (int ,int) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_cull_mode { ____Placeholder_gs_cull_mode } gs_cull_mode ;


 int gs_valid (char*) ;
 int stub1 (int ,int) ;
 TYPE_2__* thread_graphics ;

void gs_set_cull_mode(enum gs_cull_mode mode)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_set_cull_mode"))
  return;

 graphics->exports.device_set_cull_mode(graphics->device, mode);
}
