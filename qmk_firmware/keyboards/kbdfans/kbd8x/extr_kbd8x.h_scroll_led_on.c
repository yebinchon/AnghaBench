
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

inline void scroll_led_on(void) { DDRB |= (1<<2); PORTB &= ~(1<<2); }
