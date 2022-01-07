
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_ROWS ;
 int phex (scalar_t__) ;
 int print (char*) ;
 int print_matrix_header () ;
 int print_matrix_row (scalar_t__) ;

void matrix_print(void) {
  print_matrix_header();

  for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
    phex(row);
    print(": ");
    print_matrix_row(row);
    print("\n");
  }
}
