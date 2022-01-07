
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uxsta; int uxtxreg; } ;


 TYPE_1__ UART1 ;

void uart_tx_char(int chr) {
    while (UART1.uxsta & (1 << 9)) {

    }
    UART1.uxtxreg = chr;
}
