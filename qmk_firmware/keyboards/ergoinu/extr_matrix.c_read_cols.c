
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int matrix_row_t ;


 int MATRIX_COLS ;
 int _BV (int) ;
 int _SFR_IO8 (int) ;
 int* col_pins ;

__attribute__((used)) static matrix_row_t read_cols(void)
{
  matrix_row_t result = 0;
  for(int x = 0; x < MATRIX_COLS; x++) {
    result |= (_SFR_IO8(col_pins[x] >> 4) & _BV(col_pins[x] & 0xF)) ? 0 : (1 << x);
  }
  return result;
}
