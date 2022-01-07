
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F5 ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

inline void gh60_fn_led_on(void) { setPinOutput(F5); writePinLow(F5); }
