
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_2__* cur_swap; } ;
typedef TYPE_3__ gs_device_t ;
struct TYPE_5__ {int cy; } ;
struct TYPE_6__ {TYPE_1__ info; } ;


 int LOG_WARNING ;
 int blog (int ,char*) ;

uint32_t device_get_height(const gs_device_t *device)
{
 if (device->cur_swap) {
  return device->cur_swap->info.cy;
 } else {
  blog(LOG_WARNING, "device_get_height (GL): No active swap");
  return 0;
 }
}
