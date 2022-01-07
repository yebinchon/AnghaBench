
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay (int) ;
 int uart_init () ;
 int uart_recv () ;
 int uart_send (int ) ;
 int uart_send_string (char*) ;

void kernel_main(int procid)
{
 char procstr[2];
 procstr[0] = procid + '0';
 procstr[1] = 0;

 if(procid == 0) {
  uart_init();
 }
    else
 {
  delay(100000 * procid);
 }

 uart_send_string("Hello from processor ");
 uart_send_string(procstr);
 uart_send_string("\r\n");


    if(procid ==0) {
  while (1) {
   uart_send(uart_recv());
  }
 }
 else {
  while(1) {}
 }
}
