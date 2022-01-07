
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int uart_id; TYPE_1__* uartx; } ;
typedef TYPE_2__ pyb_uart_obj_t ;
struct TYPE_7__ {int DCKCFGR2; int D2CCIP2R; } ;
struct TYPE_5__ {int BRR; } ;


 int CSI_VALUE ;
 int HAL_RCC_GetPCLK1Freq () ;
 int HAL_RCC_GetPCLK2Freq () ;
 int HAL_RCC_GetSysClockFreq () ;
 int HSI_VALUE ;
 int LSE_VALUE ;
 TYPE_4__* RCC ;

uint32_t uart_get_baudrate(pyb_uart_obj_t *self) {
    uint32_t uart_clk = 0;
    if (self->uart_id == 1
        ) {
        uart_clk = HAL_RCC_GetPCLK2Freq();
    } else {
        uart_clk = HAL_RCC_GetPCLK1Freq();
    }



    uint32_t baudrate = uart_clk / self->uartx->BRR;

    return baudrate;
}
