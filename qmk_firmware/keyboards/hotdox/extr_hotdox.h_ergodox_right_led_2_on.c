
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PB6 ;
 int PORTB ;

inline void ergodox_right_led_2_on(void) { DDRB |= (1<<PB6); PORTB &= ~(1<<PB6); }
