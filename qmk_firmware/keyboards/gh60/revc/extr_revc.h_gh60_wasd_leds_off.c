
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F7 ;
 int setPinInput (int ) ;
 int writePinLow (int ) ;

inline void gh60_wasd_leds_off(void) { setPinInput(F7); writePinLow(F7); }
