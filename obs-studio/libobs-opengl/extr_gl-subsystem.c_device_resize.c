
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_8__ {TYPE_2__* cur_swap; } ;
typedef TYPE_3__ gs_device_t ;
struct TYPE_6__ {void* cy; void* cx; } ;
struct TYPE_7__ {TYPE_1__ info; } ;


 int LOG_WARNING ;
 int blog (int ,char*) ;
 int gl_update (TYPE_3__*) ;

void device_resize(gs_device_t *device, uint32_t cx, uint32_t cy)
{

 if (device->cur_swap) {
  device->cur_swap->info.cx = cx;
  device->cur_swap->info.cy = cy;
 } else {
  blog(LOG_WARNING, "device_resize (GL): No active swap");
 }

 gl_update(device);
}
