
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int PORTC ;

inline void ph_sclk_led_off(void) { DDRC &= ~(1<<5); PORTC &= ~(1<<5); }
