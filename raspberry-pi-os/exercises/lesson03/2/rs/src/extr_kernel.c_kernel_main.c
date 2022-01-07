
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_interrupt_controller () ;
 int enable_irq () ;
 int init_printf (int ,int ) ;
 int irq_vector_init () ;
 int putc ;
 int timer_init () ;
 int uart_init () ;

void kernel_main(void) {
  uart_init();
  init_printf(0, putc);
  irq_vector_init();
  timer_init();
  enable_interrupt_controller();
  enable_irq();

  while (1) {
  }
}
