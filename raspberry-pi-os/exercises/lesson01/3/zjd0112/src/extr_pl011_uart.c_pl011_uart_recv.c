
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DR ;
 int UART_FR ;
 int get32 (int ) ;

char pl011_uart_recv(void)
{

    while (get32(UART_FR) & (1<<4))
    {
        ;
    }
    return (get32(UART_DR) & 0xFF);
}
