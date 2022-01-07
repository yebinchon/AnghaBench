
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_interrupt_controller () ;
 int enable_irq () ;
 int generic_timer_init () ;
 int init_printf (int ,int ) ;
 int irq_vector_init () ;
 int putc ;
 int uart_init () ;
 int uart_recv () ;
 int uart_send (int ) ;

void kernel_main(void)
{
 uart_init();
 init_printf(0, putc);
 irq_vector_init();
 generic_timer_init();
 enable_interrupt_controller();
 enable_irq();

 while (1){
  uart_send(uart_recv());
 }
}
