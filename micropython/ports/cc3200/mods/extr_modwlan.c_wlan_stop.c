
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mode; } ;


 int SL_OS_WAIT_FOREVER ;
 int sl_LockObjLock (int *,int ) ;
 int sl_Stop (int ) ;
 int wlan_LockObj ;
 int wlan_clear_data () ;
 TYPE_1__ wlan_obj ;
 int wlan_servers_stop () ;

void wlan_stop (uint32_t timeout) {
    wlan_servers_stop();



    sl_Stop(timeout);
    wlan_clear_data();
    wlan_obj.mode = -1;
}
