
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int PORTD ;

inline void caps_led_on(void) { DDRD |= (1<<7); PORTD &= ~(1<<7); }
