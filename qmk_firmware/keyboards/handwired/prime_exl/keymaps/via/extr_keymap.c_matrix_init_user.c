
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B5 ;
 int B6 ;
 int C6 ;
 int setPinOutput (int ) ;
 int writePinHigh (int ) ;

void matrix_init_user(void) {

  setPinOutput(C6);
  writePinHigh(C6);

  setPinOutput(B6);
  writePinHigh(B6);

  setPinOutput(B5);
  writePinHigh(B5);
}
