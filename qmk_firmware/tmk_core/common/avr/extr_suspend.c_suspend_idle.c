
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SLEEP_MODE_IDLE ;
 int cli () ;
 int sei () ;
 int set_sleep_mode (int ) ;
 int sleep_cpu () ;
 int sleep_disable () ;
 int sleep_enable () ;

void suspend_idle(uint8_t time) {
    cli();
    set_sleep_mode(SLEEP_MODE_IDLE);
    sleep_enable();
    sei();
    sleep_cpu();
    sleep_disable();
}
