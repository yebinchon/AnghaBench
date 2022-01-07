
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRC ;
 int PORTC ;

inline void ph_caps_led_off(void) { DDRC &= ~(1<<6); PORTC &= ~(1<<6); }
