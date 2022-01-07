
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1 ;
 int B2 ;
 int B3 ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void matrix_init_user(void) {

  setPinOutput(B1);
  writePinLow(B1);

  setPinOutput(B2);
  writePinLow(B2);

  setPinOutput(B3);
  writePinLow(B3);
}
