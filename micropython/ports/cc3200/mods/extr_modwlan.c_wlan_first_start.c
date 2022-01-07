
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int status; } ;


 int CLR_STATUS_BIT_ALL (int ) ;
 int sl_LockObjUnlock (int *) ;
 scalar_t__ sl_Start (int ,int ,int ) ;
 int wlan_LockObj ;
 int wlan_get_sl_mac () ;
 TYPE_1__ wlan_obj ;

void wlan_first_start (void) {
    if (wlan_obj.mode < 0) {
        CLR_STATUS_BIT_ALL(wlan_obj.status);
        wlan_obj.mode = sl_Start(0, 0, 0);



    }


    wlan_get_sl_mac();
}
