
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_PENDING_1 ;
 int enable_interrupt_controller () ;
 int enable_irq () ;
 int generic_timer_init () ;
 int get32 (int ) ;
 int init_printf (int ,int ) ;
 int irq_vector_init () ;
 int printf (char*,int) ;
 int putc ;
 int uart_init () ;
 int uart_recv () ;

void kernel_main(void)
{
 uart_init();
 init_printf(0, putc);
 irq_vector_init();
 generic_timer_init();
 enable_interrupt_controller();
 enable_irq();

 while (1){

  uart_recv();
  printf("IRQ_PENDING_1: %04x \n\r", get32(IRQ_PENDING_1));
 }
}
