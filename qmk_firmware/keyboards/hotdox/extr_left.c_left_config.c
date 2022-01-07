
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCP23017_B0_GPIOB ;
 int MCP23017_B0_GPPUA ;
 int MCP23017_B0_IODIRA ;
 int MCP23017_B0_IODIRB ;
 int MCP23017_B0_IPOLA ;
 int left_write (int ,int) ;

void left_config(void)
{
  left_write(MCP23017_B0_IODIRA, 0x7F);
  left_write(MCP23017_B0_IPOLA, 0x7F);
  left_write(MCP23017_B0_GPPUA, 0x7F);

  left_write(MCP23017_B0_IODIRB, 0xFF);
  left_write(MCP23017_B0_GPIOB, 0xC0);
}
