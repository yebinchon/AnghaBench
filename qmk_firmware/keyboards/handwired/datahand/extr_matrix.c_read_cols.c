
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int PIND ;

__attribute__((used)) static matrix_row_t read_cols(void) {




  return (PIND & 0b00111100) >> 2;
}
