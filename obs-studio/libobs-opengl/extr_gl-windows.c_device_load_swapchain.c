
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* wi; } ;
typedef TYPE_4__ gs_swapchain_t ;
struct TYPE_12__ {TYPE_3__* plat; TYPE_4__* cur_swap; } ;
typedef TYPE_5__ gs_device_t ;
struct TYPE_8__ {scalar_t__ hdc; } ;
struct TYPE_10__ {int hrc; TYPE_1__ window; } ;
struct TYPE_9__ {scalar_t__ hdc; } ;
typedef scalar_t__ HDC ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int wgl_make_current (scalar_t__,int ) ;

void device_load_swapchain(gs_device_t *device, gs_swapchain_t *swap)
{
 HDC hdc = device->plat->window.hdc;
 if (device->cur_swap == swap)
  return;

 device->cur_swap = swap;

 if (swap)
  hdc = swap->wi->hdc;

 if (hdc) {
  if (!wgl_make_current(hdc, device->plat->hrc))
   blog(LOG_ERROR, "device_load_swapchain (GL) failed");
 }
}
