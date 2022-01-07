
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_interrupt_handler (int *) ;
 int uart_ring_lin2 ;

void USART3_IRQHandler(void) { uart_interrupt_handler(&uart_ring_lin2); }
