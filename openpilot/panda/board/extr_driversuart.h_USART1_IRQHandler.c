
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_interrupt_handler (int *) ;
 int uart_ring_esp_gps ;

void USART1_IRQHandler(void) { uart_interrupt_handler(&uart_ring_esp_gps); }
