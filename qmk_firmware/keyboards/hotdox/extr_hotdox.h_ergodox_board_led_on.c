
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PB7 ;
 int PORTB ;

inline void ergodox_board_led_on(void) { DDRB |= (1<<PB7); PORTB |= (1<<PB7); }
