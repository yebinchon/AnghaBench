
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BOARD_DEBUG_UART_BASEADDR ;
 int BOARD_DEBUG_UART_BAUDRATE ;
 int BOARD_DEBUG_UART_CLK_FREQ ;
 int BOARD_DEBUG_UART_TYPE ;
 int DbgConsole_Init (int ,int ,int ,int ) ;

void BOARD_InitDebugConsole(void)
{
    uint32_t uartClkSrcFreq = BOARD_DEBUG_UART_CLK_FREQ;
    DbgConsole_Init(BOARD_DEBUG_UART_BASEADDR, BOARD_DEBUG_UART_BAUDRATE, BOARD_DEBUG_UART_TYPE, uartClkSrcFreq);
}
