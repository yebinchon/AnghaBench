
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ bitpop16 (int ) ;
 int matrix_get_row (scalar_t__) ;
 scalar_t__ matrix_rows () ;

uint8_t matrix_key_count(void)
{
  uint8_t count = 0;
  for (uint8_t i = 0; i < matrix_rows(); i++) {
    count += bitpop16(matrix_get_row(i));
  }
  return count;
}
