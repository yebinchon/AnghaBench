
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_IRQ ;
 int IRQ_PENDING_1 ;
 unsigned int SYSTEM_TIMER_IRQ_1 ;
 unsigned int get32 (int ) ;
 int handle_timer_irq () ;
 int handle_uart_irq () ;
 unsigned int miniUART_IRQ ;

void handle_irq(void)
{
 unsigned int irq1 = get32(IRQ_PENDING_1);
 unsigned int irq2 = get32(AUX_IRQ);

 if (irq1 & SYSTEM_TIMER_IRQ_1) handle_timer_irq();
 if (irq2 & miniUART_IRQ) handle_uart_irq();

}
