
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* plat; TYPE_3__* cur_swap; } ;
typedef TYPE_4__ gs_device_t ;
typedef int XID ;
struct TYPE_8__ {TYPE_2__* wi; } ;
struct TYPE_7__ {int window; } ;
struct TYPE_6__ {int pbuffer; int * display; int context; } ;
typedef int GLXPbuffer ;
typedef int GLXContext ;
typedef int Display ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int glXMakeContextCurrent (int *,int ,int ,int ) ;

extern void device_enter_context(gs_device_t *device)
{
 GLXContext context = device->plat->context;
 Display *display = device->plat->display;

 if (device->cur_swap) {
  XID window = device->cur_swap->wi->window;
  if (!glXMakeContextCurrent(display, window, window, context)) {
   blog(LOG_ERROR, "Failed to make context current.");
  }
 } else {
  GLXPbuffer pbuf = device->plat->pbuffer;
  if (!glXMakeContextCurrent(display, pbuf, pbuf, context)) {
   blog(LOG_ERROR, "Failed to make context current.");
  }
 }
}
