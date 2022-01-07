
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char processor ;
 int uart_init () ;
 char uart_recv () ;
 int uart_send (char) ;
 int uart_send_string (char*) ;

void kernel_main(char proc_id)
{

 while (processor != proc_id) {}

 if (proc_id == 0) {

  uart_init();

 }

 uart_send_string("Hello, world! I am the Core ");
 uart_send(proc_id + '0');
 uart_send_string("\r\n");
 processor++;

 if (proc_id == 0) {

  while (1) {

   uart_send(uart_recv());

  }

 } else {

  while (1) {}

 }

}
