
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MCP23017_B0_GPIOA ;
 int left_read (int ,int *) ;

uint8_t left_read_cols(void)
{
    uint8_t data = 0;

    left_read(MCP23017_B0_GPIOA, &data);

    return data;
}
