
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ SOLENOID_MAX_DWELL ;

void solenoid_dwell_plus(uint8_t solenoid_dwell) {
    if (solenoid_dwell < SOLENOID_MAX_DWELL) solenoid_dwell++;
}
