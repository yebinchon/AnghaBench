
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int battery_status_t ;


 int CHARGING ;
 int DISCHARGING ;
 int FULL_CHARGED ;
 int LOW_VOLTAGE ;
 int USBSTA ;
 int VBUS ;
 scalar_t__ battery_charging () ;
 scalar_t__ low_voltage () ;

battery_status_t battery_status(void)
{
    if (USBSTA&(1<<VBUS)) {

        return battery_charging() ? CHARGING : FULL_CHARGED;
    } else {

        return low_voltage() ? LOW_VOLTAGE : DISCHARGING;
    }
}
