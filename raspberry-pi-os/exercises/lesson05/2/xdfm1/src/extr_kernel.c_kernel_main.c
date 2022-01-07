
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_KTHREAD ;
 int copy_process (int ,unsigned long,int ,int ) ;
 int enable_interrupt_controller () ;
 int enable_irq () ;
 int init_printf (int ,int ) ;
 int irq_vector_init () ;
 int kernel_process ;
 int printf (char*) ;
 int putc ;
 int schedule () ;
 int timer_init () ;
 int uart_init () ;

void kernel_main(void)
{
 uart_init();
 init_printf(0, putc);
 irq_vector_init();
 timer_init();
 enable_interrupt_controller();
 enable_irq();

 int res = copy_process(PF_KTHREAD, (unsigned long)&kernel_process, 0, 0);
 if (res < 0) {
  printf("error while starting kernel process");
  return;
 }

 while (1){
  schedule();
 }
}
