
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* plat; TYPE_3__* cur_swap; } ;
typedef TYPE_5__ gs_device_t ;
struct TYPE_7__ {int hdc; } ;
struct TYPE_10__ {int hrc; TYPE_1__ window; } ;
struct TYPE_9__ {TYPE_2__* wi; } ;
struct TYPE_8__ {int hdc; } ;
typedef int HDC ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int wgl_make_current (int ,int ) ;

void device_enter_context(gs_device_t *device)
{
 HDC hdc = device->plat->window.hdc;
 if (device->cur_swap)
  hdc = device->cur_swap->wi->hdc;

 if (!wgl_make_current(hdc, device->plat->hrc))
  blog(LOG_ERROR, "device_enter_context (GL) failed");
}
