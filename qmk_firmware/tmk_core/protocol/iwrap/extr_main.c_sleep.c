
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SLEEP_MODE_PWR_DOWN ;
 int WD_IRQ ;
 int WD_OFF ;
 int WD_SET (int ,...) ;
 int cli () ;
 int sei () ;
 int set_sleep_mode (int ) ;
 int sleep_bod_disable () ;
 int sleep_cpu () ;
 int sleep_disable () ;
 int sleep_enable () ;

__attribute__((used)) static void sleep(uint8_t term) {
    WD_SET(WD_IRQ, term);

    cli();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    sleep_bod_disable();
    sei();
    sleep_cpu();
    sleep_disable();

    WD_SET(WD_OFF);
}
