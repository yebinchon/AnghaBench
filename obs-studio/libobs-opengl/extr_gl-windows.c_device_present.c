
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* cur_swap; } ;
typedef TYPE_3__ gs_device_t ;
struct TYPE_6__ {TYPE_1__* wi; } ;
struct TYPE_5__ {int hdc; } ;


 int GetLastError () ;
 int LOG_ERROR ;
 int SwapBuffers (int ) ;
 int blog (int ,char*,...) ;

void device_present(gs_device_t *device)
{
 if (!SwapBuffers(device->cur_swap->wi->hdc)) {
  blog(LOG_ERROR,
       "SwapBuffers failed, GetLastError "
       "returned %lu",
       GetLastError());
  blog(LOG_ERROR, "device_present (GL) failed");
 }
}
