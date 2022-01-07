
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B0 ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void matrix_init_user(void) {
  setPinOutput(B0);
  writePinLow(B0);
}
