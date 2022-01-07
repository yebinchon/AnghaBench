
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BAUD_RATE ;
 int CLK_FREQ_MHZ ;

unsigned int uart_get_baudrate( void )
{
    return (CLK_FREQ_MHZ * 125000) / BAUD_RATE - 1;
}
