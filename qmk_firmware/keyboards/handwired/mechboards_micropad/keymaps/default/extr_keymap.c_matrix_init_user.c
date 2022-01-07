
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F6 ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void matrix_init_user(void) {
  setPinOutput(F6);
  writePinLow(F6);
}
