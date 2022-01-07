
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int B4 ;
 int B5 ;
 int B6 ;
 int B7 ;
 int C6 ;
 int C7 ;
 int D2 ;
 int D6 ;
 int D7 ;
 int E6 ;
 int F0 ;
 int F1 ;
 int F4 ;
 int F5 ;
 int F6 ;
 int F7 ;
 int MATRIX_ROWS ;
 int capSetup () ;
 int i2c_init () ;
 int matrix ;
 int matrix_init_quantum () ;
 int memset (int ,int ,int) ;
 int setPinInput (int ) ;
 int setPinOutput (int ) ;
 int writeDataToTS (int,int) ;
 int writePinHigh (int ) ;

void matrix_init(void) {

  i2c_init();


  setPinOutput(E6);

  setPinOutput(D7);


  setPinOutput(B7);
  writePinHigh(B7);


  setPinOutput(F7);
  setPinOutput(F6);
  setPinOutput(F5);
  setPinOutput(F4);
  setPinOutput(F1);
  setPinOutput(F0);


  setPinOutput(D6);
  setPinOutput(B4);
  setPinOutput(B5);
  setPinOutput(B6);
  setPinOutput(C6);
  setPinOutput(C7);


  setPinInput(D2);

  capSetup();
  writeDataToTS(0x06, 0x12);

  memset(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));

  matrix_init_quantum();
}
