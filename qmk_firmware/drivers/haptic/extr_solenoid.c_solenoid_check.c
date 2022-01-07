
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ buzz; } ;


 int SOLENOID_MIN_DWELL ;
 int SOLENOID_PIN ;
 TYPE_1__ haptic_config ;
 int solenoid_buzzing ;
 int solenoid_dwell ;
 int solenoid_on ;
 int solenoid_start ;
 int solenoid_stop () ;
 int timer_elapsed (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void solenoid_check(void) {
    uint16_t elapsed = 0;

    if (!solenoid_on) return;

    elapsed = timer_elapsed(solenoid_start);


    if (elapsed > solenoid_dwell) {
        solenoid_stop();
        return;
    }


    if (haptic_config.buzz) {
        if (elapsed / SOLENOID_MIN_DWELL % 2 == 0) {
            if (!solenoid_buzzing) {
                solenoid_buzzing = 1;
                writePinHigh(SOLENOID_PIN);
            }
        } else {
            if (solenoid_buzzing) {
                solenoid_buzzing = 0;
                writePinLow(SOLENOID_PIN);
            }
        }
    }
}
