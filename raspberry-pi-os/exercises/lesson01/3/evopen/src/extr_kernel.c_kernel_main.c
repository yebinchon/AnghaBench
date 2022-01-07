
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_init () ;
 int uart_send (unsigned long) ;
 int uart_send_string (char*) ;

void kernel_main(unsigned long id) {
    if (id == 0) {
        uart_init();
    }
    uart_send_string("Hello, from processor ");
    uart_send(id + 48);
    uart_send_string(".\r\n");

    while (1)
        ;
}
