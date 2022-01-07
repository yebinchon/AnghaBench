
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PB4 ;
 int PORTB ;

inline void ergodox_right_led_3_off(void) { DDRB |= (1<<PB4); PORTB |= (1<<PB4); }
