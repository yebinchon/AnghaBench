
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wi; TYPE_4__* device; } ;
typedef TYPE_1__ gs_swapchain_t ;
struct TYPE_7__ {TYPE_1__* cur_swap; } ;


 int bfree (TYPE_1__*) ;
 int device_load_swapchain (TYPE_4__*,int *) ;
 int gl_platform_cleanup_swapchain (TYPE_1__*) ;
 int gl_windowinfo_destroy (int ) ;

void gs_swapchain_destroy(gs_swapchain_t *swapchain)
{
 if (!swapchain)
  return;

 if (swapchain->device->cur_swap == swapchain)
  device_load_swapchain(swapchain->device, ((void*)0));

 gl_platform_cleanup_swapchain(swapchain);

 gl_windowinfo_destroy(swapchain->wi);
 bfree(swapchain);
}
