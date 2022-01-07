
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UART_FIFO_REG ;
 int WRITEREG (scalar_t__,int) ;
 scalar_t__ uart_base ;
 int wait_xfered () ;

void board_putc(int ch)
{
 if (!uart_base)
  return;

 wait_xfered();
        WRITEREG(uart_base + UART_FIFO_REG, ch);
 wait_xfered();
}
