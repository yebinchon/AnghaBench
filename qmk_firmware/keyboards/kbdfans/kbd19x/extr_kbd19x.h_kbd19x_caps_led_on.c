
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

inline void kbd19x_caps_led_on(void) { DDRB |= (1<<0); PORTB &= ~(1<<0); }
