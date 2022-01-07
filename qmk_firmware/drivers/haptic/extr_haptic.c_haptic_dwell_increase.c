
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int dwell; } ;


 scalar_t__ SOLENOID_MAX_DWELL ;
 TYPE_1__ haptic_config ;
 int haptic_set_dwell (int) ;
 int solenoid_set_dwell (int) ;

void haptic_dwell_increase(void) {
    uint8_t dwell = haptic_config.dwell + 1;






    haptic_set_dwell(dwell);
}
