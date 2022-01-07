
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_swapchain_t ;
struct TYPE_4__ {int (* device_load_swapchain ) (int ,int *) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,int *) ;
 TYPE_2__* thread_graphics ;

void gs_load_swapchain(gs_swapchain_t *swapchain)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_load_swapchain"))
  return;

 graphics->exports.device_load_swapchain(graphics->device, swapchain);
}
