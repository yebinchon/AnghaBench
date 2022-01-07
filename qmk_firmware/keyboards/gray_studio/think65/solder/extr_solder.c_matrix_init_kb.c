
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C7 ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;

void matrix_init_kb(void) {



  setPinOutput(C7);

  matrix_init_user();
}
