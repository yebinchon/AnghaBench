
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int matrix_row_t ;


 int debounce_mask (int,size_t) ;
 int* matrix ;
 int read_cols (size_t) ;

matrix_row_t debounce_read_cols(uint8_t row) {

  matrix_row_t cols = read_cols(row);

  matrix_row_t mask = debounce_mask(cols, row);

  return (cols & mask) | (matrix[row] & ~mask);;
}
