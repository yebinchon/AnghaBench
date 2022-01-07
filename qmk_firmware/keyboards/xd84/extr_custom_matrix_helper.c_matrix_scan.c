
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MATRIX_ROWS ;
 int custom_matrix_scan (int ) ;
 int debounce (int ,int ,int ,int) ;
 int matrix ;
 int matrix_scan_quantum () ;
 int raw_matrix ;

__attribute__ ((weak))
uint8_t matrix_scan(void) {
  bool changed = custom_matrix_scan(raw_matrix);

  debounce(raw_matrix, matrix, MATRIX_ROWS, changed);

  matrix_scan_quantum();
  return 1;
}
