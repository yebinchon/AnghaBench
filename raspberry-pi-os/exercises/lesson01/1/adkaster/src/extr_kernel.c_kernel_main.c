
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAUD_9600 ;
 int uart_init (int ) ;
 int uart_recv () ;
 int uart_send (int ) ;
 int uart_send_string (char*) ;

void kernel_main(void)
{
 uart_init(BAUD_9600);
 uart_send_string("Hello, world!\r\n");

 while (1) {
  uart_send(uart_recv());
 }
}
