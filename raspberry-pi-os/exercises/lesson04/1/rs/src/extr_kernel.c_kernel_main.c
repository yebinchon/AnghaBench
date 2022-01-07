
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_process (unsigned long,unsigned long) ;
 int enable_interrupt_controller () ;
 int enable_irq () ;
 int init_printf (int ,int ) ;
 int irq_vector_init () ;
 int printf (char*) ;
 int process ;
 int putc ;
 int schedule () ;
 int timer_init () ;
 int uart_init () ;

void kernel_main(void) {
  uart_init();
  init_printf(0, putc);
  irq_vector_init();
  timer_init();
  enable_interrupt_controller();
  enable_irq();

  int res = copy_process((unsigned long)&process, (unsigned long)"12345");
  if (res != 0) {
    printf("error while starting process 1");
    return;
  }
  res = copy_process((unsigned long)&process, (unsigned long)"abcde");
  if (res != 0) {
    printf("error while starting process 2");
    return;
  }

  while (1) {
    schedule();
  }
}
