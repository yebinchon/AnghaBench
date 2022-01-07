
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POTATO_CONSOLE_CLOCK_DIV ;
 int POTATO_UART_BASE ;
 int PROC_FREQ ;
 int UART_FREQ ;
 int potato_uart_base ;
 int potato_uart_divisor (int ,int ) ;
 int potato_uart_reg_write (int ,int ) ;

void potato_uart_init(void) {
    potato_uart_base = POTATO_UART_BASE;
    potato_uart_reg_write(POTATO_CONSOLE_CLOCK_DIV, potato_uart_divisor(PROC_FREQ, UART_FREQ));

}
