
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char uart_recv () ;
 int uart_send (char) ;
 int uart_send_string (char*) ;

void handle_uart_irq( void )
{
 char c = uart_recv();
 uart_send_string("mini UART interrupt received. Received: ");
 uart_send(c);
 uart_send_string("\n\r");
}
