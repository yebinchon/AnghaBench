
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uxrxreg; } ;


 TYPE_1__ UART1 ;

int uart_rx_char(void) {
    return UART1.uxrxreg;
}
