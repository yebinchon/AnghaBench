
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_ROWS ;
 int matrix_get_row (scalar_t__) ;
 int phex (scalar_t__) ;
 int print (char*) ;
 int print_bin_reverse8 (int ) ;

void matrix_print(void) {
  print("\nr/c 01234567\n");

  for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
    phex(row);
    print(": ");
    print_bin_reverse8(matrix_get_row(row));
    print("\n");
  }
}
