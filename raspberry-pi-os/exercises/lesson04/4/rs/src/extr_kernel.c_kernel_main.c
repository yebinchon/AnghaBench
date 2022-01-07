
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_process (unsigned long,unsigned long,int) ;
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

  printf("cp 1\r\n");
  int res = copy_process((unsigned long)&process, (unsigned long)"12345", 1);
  if (res != 0) {
    printf("error while starting process 1");
    return;
  }
  printf("cp 2\r\n");
  res = copy_process((unsigned long)&process, (unsigned long)"abcde", 2);
  if (res != 0) {
    printf("error while starting process 2");
    return;
  }

  printf("sched\r\n");
  while (1) {
    schedule();
  }
}
