
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* plat; } ;
typedef TYPE_2__ gs_device_t ;
struct TYPE_4__ {int * display; } ;
typedef int Display ;


 int LOG_ERROR ;
 int None ;
 int blog (int ,char*) ;
 int glXMakeContextCurrent (int *,int ,int ,int *) ;

extern void device_leave_context(gs_device_t *device)
{
 Display *display = device->plat->display;

 if (!glXMakeContextCurrent(display, None, None, ((void*)0))) {
  blog(LOG_ERROR, "Failed to reset current context.");
 }
}
