
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTE ;

inline void dk60_caps_led_off(void) { PORTE &= ~(1<<6); }
