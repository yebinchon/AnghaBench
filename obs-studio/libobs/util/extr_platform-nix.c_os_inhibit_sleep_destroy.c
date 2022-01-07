
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* reason; int attr; int stop_event; int dbus; } ;
typedef TYPE_1__ os_inhibit_t ;


 int bfree (TYPE_1__*) ;
 int dbus_sleep_info_destroy (int ) ;
 int os_event_destroy (int ) ;
 int os_inhibit_sleep_set_active (TYPE_1__*,int) ;
 int posix_spawnattr_destroy (int *) ;

void os_inhibit_sleep_destroy(os_inhibit_t *info)
{
 if (info) {
  os_inhibit_sleep_set_active(info, 0);



  os_event_destroy(info->stop_event);
  posix_spawnattr_destroy(&info->attr);
  bfree(info->reason);
  bfree(info);
 }
}
