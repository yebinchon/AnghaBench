
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int A0 ;
 int A1 ;
 int A10 ;
 int A2 ;
 int A3 ;
 int A4 ;
 int A5 ;
 int A6 ;
 int A7 ;
 int A8 ;
 int A9 ;
 int B11 ;
 int B12 ;
 int B13 ;
 int B14 ;
 int B15 ;
 int B3 ;
 int B4 ;
 int B5 ;
 int B6 ;
 int B7 ;
 int B8 ;
 int B9 ;
 int EXTD1 ;
 int MATRIX_ROWS ;
 int extStart (int *,int *) ;
 int extcfg ;
 int matrix ;
 int matrix_debouncing ;
 int matrix_init_quantum () ;
 int memset (int ,int ,int) ;
 int setPinInputHigh (int ) ;

void matrix_init(void) {

    setPinInputHigh(A0);
    setPinInputHigh(A1);
    setPinInputHigh(A2);
    setPinInputHigh(A3);
    setPinInputHigh(A4);
    setPinInputHigh(A5);
    setPinInputHigh(A6);
    setPinInputHigh(A7);
    setPinInputHigh(A8);
    setPinInputHigh(A9);
    setPinInputHigh(A10);
    setPinInputHigh(B3);
    setPinInputHigh(B4);
    setPinInputHigh(B5);
    setPinInputHigh(B6);
    setPinInputHigh(B7);
    setPinInputHigh(B8);
    setPinInputHigh(B9);
    setPinInputHigh(B11);
    setPinInputHigh(B12);
    setPinInputHigh(B13);
    setPinInputHigh(B14);
    setPinInputHigh(B15);

    memset(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    memset(matrix_debouncing, 0, MATRIX_ROWS * sizeof(matrix_row_t));

    matrix_init_quantum();

    extStart(&EXTD1, &extcfg);
}
