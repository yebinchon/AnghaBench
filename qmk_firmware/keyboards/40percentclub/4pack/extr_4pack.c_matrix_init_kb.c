
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F4 ;
 int F5 ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;

void matrix_init_kb(void) {



  setPinOutput(F4);
  setPinOutput(F5);


  matrix_init_user();
}
