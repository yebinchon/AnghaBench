
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uxbrg; int uxmode; int uxsta; } ;


 TYPE_1__ UART1 ;

void uart_init(void) {


    UART1.uxbrg = 64;
    UART1.uxmode = 1 << 15;
    UART1.uxsta = 1 << 10;
}
