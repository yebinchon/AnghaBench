
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MCP23017_B0_IODIRB ;
 int left_write (int ,int) ;

void left_select_row(uint8_t row)
{
    left_write(MCP23017_B0_IODIRB, ~(1 << row));
}
