
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PB3 ;
 int PORTB ;

inline void ergodox_right_led_3_on(void) { DDRB |= (1<<PB3); PORTB |= (1<<PB3); }
