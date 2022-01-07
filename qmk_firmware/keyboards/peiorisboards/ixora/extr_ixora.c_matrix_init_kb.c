
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A10 ;
 int A8 ;
 int A9 ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

void matrix_init_kb(void) {


    setPinOutput(A8);
    setPinOutput(A9);
    setPinOutput(A10);
    writePinLow(A8);
    writePinLow(A9);
    writePinLow(A10);

    matrix_init_user();
}
