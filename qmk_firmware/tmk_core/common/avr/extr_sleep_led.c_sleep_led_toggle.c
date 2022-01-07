
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCIE1A ;
 int TIMSK1 ;
 int _BV (int ) ;

void sleep_led_toggle(void) {

    TIMSK1 ^= _BV(OCIE1A);
}
