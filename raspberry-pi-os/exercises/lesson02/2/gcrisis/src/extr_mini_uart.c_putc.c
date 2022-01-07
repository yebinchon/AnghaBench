
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uart_send (char) ;

void putc ( void* p, char c)
{
    uart_send(c);
}
