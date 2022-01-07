
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int READ_PERI_REG (int ) ;
 int UART_CLKDIV_M ;
 int UART_CLKDIV_REG (int) ;
 int uart_div_modify (int,int) ;

uint32_t set_baud_rate(uint32_t uart_no, uint32_t old_baud_rate,
                       uint32_t new_baud_rate) {
  uint32_t uart_reg = READ_PERI_REG(UART_CLKDIV_REG(uart_no));
  uint32_t uart_div = uart_reg & UART_CLKDIV_M;
  uint32_t master_freq = uart_div * old_baud_rate;
  uart_div_modify(uart_no, master_freq / new_baud_rate);
  return uart_div;
}
