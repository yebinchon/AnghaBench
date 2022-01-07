
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int PORTC ;

inline void sixshooter_led_1_off(void) { DDRC &= ~(1<<7); PORTC &= ~(1<<7); }
