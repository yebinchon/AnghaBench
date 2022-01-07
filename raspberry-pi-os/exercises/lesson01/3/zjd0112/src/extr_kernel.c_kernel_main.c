
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pl011_uart_init () ;
 char pl011_uart_recv () ;
 int pl011_uart_send (char) ;
 int pl011_uart_send_string (char*) ;
 unsigned int semaphore ;

void kernel_main(unsigned int proc_id)
{
    if (proc_id == 0)
    {
        pl011_uart_init();
    }

    while (semaphore != proc_id)
    {
        ;
    }


    pl011_uart_send_string("Hello, world from processor ");
    pl011_uart_send((char)(proc_id + '0'));
    pl011_uart_send_string("\r\n");
    semaphore++;

    if (proc_id == 0)
    {
        while (1)
        {
            pl011_uart_send(pl011_uart_recv());
        }
    }
}
