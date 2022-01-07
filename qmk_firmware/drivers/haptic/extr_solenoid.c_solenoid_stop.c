
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOLENOID_PIN ;
 int solenoid_buzzing ;
 int solenoid_on ;
 int writePinLow (int ) ;

void solenoid_stop(void) {
    writePinLow(SOLENOID_PIN);
    solenoid_on = 0;
    solenoid_buzzing = 0;
}
