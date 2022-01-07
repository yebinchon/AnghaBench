
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F5 ;
 int setPinInput (int ) ;
 int writePinLow (int ) ;

inline void gh60_fn_led_off(void) { setPinInput(F5); writePinLow(F5); }
