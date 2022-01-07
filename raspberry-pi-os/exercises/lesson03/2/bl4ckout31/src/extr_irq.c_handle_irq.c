
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AUX_IRQ ;
 int IRQ_PENDING_1 ;
 unsigned int SYSTEM_TIMER_IRQ_1 ;
 unsigned int get32 (int ) ;
 int handle_timer_irq () ;
 int handle_uart_irq () ;
 int printf (char*,unsigned int) ;

void handle_irq(void)
{
 unsigned int irq = get32(IRQ_PENDING_1);


 while (irq) {


  if (irq & SYSTEM_TIMER_IRQ_1) {
   handle_timer_irq();
   irq &= ~SYSTEM_TIMER_IRQ_1;
  } else if (irq & AUX_IRQ) {
   handle_uart_irq();
   irq &= ~AUX_IRQ;
  } else {
   printf("Unknown pending irq: %x\r\n", irq);
   irq = 0;
  }
 }
}
