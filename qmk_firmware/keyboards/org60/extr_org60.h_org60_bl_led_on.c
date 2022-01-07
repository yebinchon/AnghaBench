
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;
 int PORTF ;

inline void org60_bl_led_on(void) { DDRF |= (1<<5); PORTF &= ~(1<<5); }
