
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D1 ;
 int F4 ;
 int F5 ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;

void led_init(void) {
  setPinOutput(D1);
  writePinHigh(D1);
  setPinOutput(F4);
  writePinHigh(F4);
  setPinOutput(F5);
  writePinHigh(F5);
}
