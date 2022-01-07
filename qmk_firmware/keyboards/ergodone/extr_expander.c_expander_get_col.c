
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int expander_input ;

uint8_t expander_get_col(uint8_t col)
{
  if (col > 4) {
    col++;
  }
  return expander_input & (1<<col) ? 1 : 0;
}
