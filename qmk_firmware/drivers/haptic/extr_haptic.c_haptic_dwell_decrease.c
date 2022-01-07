
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ dwell; } ;


 scalar_t__ SOLENOID_MAX_DWELL ;
 scalar_t__ SOLENOID_MIN_DWELL ;
 TYPE_1__ haptic_config ;
 int haptic_set_dwell (scalar_t__) ;
 int solenoid_set_dwell (scalar_t__) ;

void haptic_dwell_decrease(void) {
    uint8_t dwell = haptic_config.dwell - 1;






    haptic_set_dwell(dwell);
}
