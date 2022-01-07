
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay (int) ;
 int is_uart_inited ;
 int uart_init (int) ;
 int uart_recv () ;
 int uart_send (int) ;
 int uart_send_string (char*) ;

void kernel_main(int corenum)
{
    if(0==corenum)
    {
        uart_init(115200);
        is_uart_inited = 1;

        uart_send(corenum+'0');
        uart_send_string("\r\n");
    }
    while(!is_uart_inited);
    delay(corenum*200000);
    uart_send_string("Hello, world! From processor <");
    uart_send(corenum+'0');
    uart_send_string(">\r\n");

    if(0==corenum)
    {
        while (1) {
            uart_send(uart_recv());
        }

    }
    else
    {
        while(1);
    }
}
