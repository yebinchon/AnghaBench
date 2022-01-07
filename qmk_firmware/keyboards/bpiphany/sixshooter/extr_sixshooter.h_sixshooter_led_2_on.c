
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int PORTD ;

inline void sixshooter_led_2_on(void) { DDRD |= (1<<0); PORTD |= (1<<0); }
