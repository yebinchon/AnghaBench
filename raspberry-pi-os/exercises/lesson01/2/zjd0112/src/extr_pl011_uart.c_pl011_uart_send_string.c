
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pl011_uart_send (char) ;

void pl011_uart_send_string(char* str)
{
    for (int i = 0; str[i] != '\0'; i++)
    {
        pl011_uart_send((char)str[i]);
    }
}
