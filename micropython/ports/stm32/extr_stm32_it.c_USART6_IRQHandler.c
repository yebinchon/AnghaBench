
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int USART6_IRQn ;
 int uart_irq_handler (int) ;

void USART6_IRQHandler(void) {
    IRQ_ENTER(USART6_IRQn);
    uart_irq_handler(6);
    IRQ_EXIT(USART6_IRQn);
}
