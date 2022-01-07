
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B4 ;
 int B5 ;
 int B6 ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;

void keyboard_pre_init_kb(void) {

  setPinOutput(B4);
  setPinOutput(B5);
  setPinOutput(B6);
  writePinHigh(B4);
  writePinHigh(B5);
  writePinHigh(B6);
}
