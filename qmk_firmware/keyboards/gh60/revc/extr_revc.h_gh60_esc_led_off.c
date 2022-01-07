
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F6 ;
 int setPinInput (int ) ;
 int writePinLow (int ) ;

inline void gh60_esc_led_off(void) { setPinInput(F6); writePinLow(F6); }
