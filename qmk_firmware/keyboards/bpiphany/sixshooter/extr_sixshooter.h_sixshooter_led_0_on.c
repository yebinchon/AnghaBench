
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

inline void sixshooter_led_0_on(void) { DDRB |= (1<<6); PORTB |= (1<<6); }
