
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buzz; } ;


 int SOLENOID_PIN ;
 TYPE_1__ haptic_config ;
 int solenoid_buzzing ;
 int solenoid_on ;
 int solenoid_start ;
 int timer_read () ;
 int writePinHigh (int ) ;

void solenoid_fire(void) {
    if (!haptic_config.buzz && solenoid_on) return;
    if (haptic_config.buzz && solenoid_buzzing) return;

    solenoid_on = 1;
    solenoid_buzzing = 1;
    solenoid_start = timer_read();
    writePinHigh(SOLENOID_PIN);
}
