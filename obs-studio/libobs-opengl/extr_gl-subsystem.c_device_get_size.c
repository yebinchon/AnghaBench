
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_2__* cur_swap; } ;
typedef TYPE_3__ gs_device_t ;
struct TYPE_5__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_6__ {TYPE_1__ info; } ;


 int LOG_WARNING ;
 int blog (int ,char*) ;

void device_get_size(const gs_device_t *device, uint32_t *cx, uint32_t *cy)
{
 if (device->cur_swap) {
  *cx = device->cur_swap->info.cx;
  *cy = device->cur_swap->info.cy;
 } else {
  blog(LOG_WARNING, "device_get_size (GL): No active swap");
  *cx = 0;
  *cy = 0;
 }
}
