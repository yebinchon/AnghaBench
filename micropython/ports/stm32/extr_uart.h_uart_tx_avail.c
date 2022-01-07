
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* uartx; } ;
typedef TYPE_2__ pyb_uart_obj_t ;
struct TYPE_4__ {int SR; int ISR; } ;


 int USART_ISR_TXE ;
 int USART_ISR_TXE_TXFNF ;
 int USART_SR_TXE ;

__attribute__((used)) static inline bool uart_tx_avail(pyb_uart_obj_t *self) {





    return self->uartx->ISR & USART_ISR_TXE;

}
