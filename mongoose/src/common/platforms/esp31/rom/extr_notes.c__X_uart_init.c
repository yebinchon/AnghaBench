
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int baud_rate; } ;


 int uart_div_modify (int) ;
 TYPE_1__ uartdev ;

void _X_uart_init(uint32_t a) {






  uart_div_modify(13000000 / uartdev.baud_rate);

}
