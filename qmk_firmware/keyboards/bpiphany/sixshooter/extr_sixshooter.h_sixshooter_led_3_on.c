
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

inline void sixshooter_led_3_on(void) { DDRB |= (1<<5); PORTB |= (1<<5); }
