
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_ROWS ;
 int _delay_us (int) ;
 int * matrix ;
 int matrix_scan_user () ;
 int read_cols () ;
 int select_row (scalar_t__) ;

uint8_t matrix_scan(void) {
  for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
    select_row(row);




    _delay_us(1000);
    matrix[row] = read_cols();
  }

  matrix_scan_user();

  return 1;
}
