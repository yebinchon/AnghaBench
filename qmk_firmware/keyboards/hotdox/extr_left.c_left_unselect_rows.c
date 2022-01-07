
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCP23017_B0_IODIRB ;
 int left_write (int ,int) ;

void left_unselect_rows(void)
{
    left_write(MCP23017_B0_IODIRB, 0x3F);
}
