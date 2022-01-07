
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alarmset; } ;


 int pyb_rtc_disable_interupt () ;
 TYPE_1__ pyb_rtc_obj ;

void pyb_rtc_disable_alarm (void) {
    pyb_rtc_obj.alarmset = 0;
    pyb_rtc_disable_interupt();
}
