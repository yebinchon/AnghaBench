
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ matrix_row_t ;


 scalar_t__ read_cols () ;
 int select_row (size_t) ;
 int wait_us (int) ;

__attribute__((used)) static bool read_cols_on_row(matrix_row_t current_matrix[], uint8_t current_row) {

  matrix_row_t last_row_value = current_matrix[current_row];


  current_matrix[current_row] = 0;


  select_row(current_row);
  wait_us(30);

  current_matrix[current_row] = read_cols();



  return (last_row_value != current_matrix[current_row]);
}
