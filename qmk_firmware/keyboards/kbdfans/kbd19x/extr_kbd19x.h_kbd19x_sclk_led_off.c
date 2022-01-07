
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

inline void kbd19x_sclk_led_off(void) { DDRB &= ~(1<<1); PORTB &= ~(1<<1); }
