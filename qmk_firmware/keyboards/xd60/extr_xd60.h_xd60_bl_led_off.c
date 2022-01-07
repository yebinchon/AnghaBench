
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRF ;
 int PORTF ;

inline void xd60_bl_led_off(void) { DDRF &= ~(1<<5); PORTF &= ~(1<<5); }
