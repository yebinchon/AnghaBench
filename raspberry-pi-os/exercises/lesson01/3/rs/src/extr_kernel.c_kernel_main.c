
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cur_proc ;
 unsigned long getmpid () ;
 int uart_init () ;
 unsigned long uart_recv () ;
 int uart_send (unsigned long) ;
 int uart_send_string (char*) ;

void kernel_main(void) {
  unsigned long mpid = getmpid();


  if (mpid == 0) {
    uart_init();
  }


  while (cur_proc != mpid)
    ;

  uart_send_string("Hello, from processor ");
  uart_send(mpid + '0');
  uart_send_string("\r\n");


  ++cur_proc;


  if (mpid == 0) {
    while (cur_proc != 4)
      ;

    while (1) {
      uart_send(uart_recv());
    }
  }
}
