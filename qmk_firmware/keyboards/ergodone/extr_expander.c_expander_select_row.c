
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EXPANDER_REG_IODIRB ;
 int expander_write (int ,int) ;

void expander_select_row(uint8_t row)
{
  expander_write(EXPANDER_REG_IODIRB, ~(1<<(row+1)));
}
