
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTF ;

inline void dk60_esc_led_off(void) { PORTF &= ~(1<<0); }
