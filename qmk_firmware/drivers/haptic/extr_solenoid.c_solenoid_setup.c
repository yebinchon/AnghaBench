
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOLENOID_PIN ;
 int setPinOutput (int ) ;
 int solenoid_fire () ;

void solenoid_setup(void) {
    setPinOutput(SOLENOID_PIN);
    solenoid_fire();
}
