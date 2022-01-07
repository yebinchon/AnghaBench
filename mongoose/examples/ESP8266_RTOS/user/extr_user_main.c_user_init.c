
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MGOS_TASK_PRIORITY ;
 int MG_TASK_STACK_SIZE ;
 int UART_CLK_FREQ ;
 int mg_task ;
 int printf (char*,int) ;
 int system_get_free_heap_size () ;
 int uart_div_modify (int ,int) ;
 int xTaskCreate (int ,char const*,int,int *,int ,int *) ;

void user_init(void) {
  uart_div_modify(0, UART_CLK_FREQ / 115200);

  printf("Free RAM: %d\r\n", system_get_free_heap_size());
  xTaskCreate(mg_task, (const signed char *) "mongoose",
              MG_TASK_STACK_SIZE / 4,
              ((void*)0), MGOS_TASK_PRIORITY, ((void*)0));
}
