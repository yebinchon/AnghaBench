
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* wi; } ;
typedef TYPE_3__ gs_swapchain_t ;
struct TYPE_10__ {TYPE_2__* plat; TYPE_3__* cur_swap; } ;
typedef TYPE_4__ gs_device_t ;
typedef int XID ;
struct TYPE_8__ {int pbuffer; int context; int * display; } ;
struct TYPE_7__ {int window; } ;
typedef int GLXPbuffer ;
typedef int GLXContext ;
typedef int Display ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int glXMakeContextCurrent (int *,int ,int ,int ) ;

extern void device_load_swapchain(gs_device_t *device, gs_swapchain_t *swap)
{
 if (device->cur_swap == swap)
  return;

 Display *dpy = device->plat->display;
 GLXContext ctx = device->plat->context;

 device->cur_swap = swap;

 if (swap) {
  XID window = swap->wi->window;
  if (!glXMakeContextCurrent(dpy, window, window, ctx)) {
   blog(LOG_ERROR, "Failed to make context current.");
  }
 } else {
  GLXPbuffer pbuf = device->plat->pbuffer;
  if (!glXMakeContextCurrent(dpy, pbuf, pbuf, ctx)) {
   blog(LOG_ERROR, "Failed to make context current.");
  }
 }
}
