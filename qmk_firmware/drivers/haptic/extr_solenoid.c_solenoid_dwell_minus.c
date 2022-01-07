
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



void solenoid_dwell_minus(uint8_t solenoid_dwell) {
    if (solenoid_dwell > 0) solenoid_dwell--;
}
