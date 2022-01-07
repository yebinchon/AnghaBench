
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int buf ;
struct TYPE_9__ {int DATA; } ;
struct TYPE_10__ {TYPE_3__ bit; } ;
struct TYPE_7__ {scalar_t__ RXC; } ;
struct TYPE_8__ {TYPE_1__ bit; } ;
struct TYPE_11__ {TYPE_4__ DATA; TYPE_2__ INTFLAG; } ;
struct TYPE_12__ {TYPE_5__ USART; } ;


 TYPE_6__* USARTx ;
 int __WFI () ;
 scalar_t__ tud_cdc_available () ;
 scalar_t__ tud_cdc_connected () ;
 scalar_t__ tud_cdc_read (int*,int) ;

int mp_hal_stdin_rx_chr(void) {
    for (;;) {
        if (USARTx->USART.INTFLAG.bit.RXC) {
            return USARTx->USART.DATA.bit.DATA;
        }
        if (tud_cdc_connected() && tud_cdc_available()) {
            uint8_t buf[1];
            uint32_t count = tud_cdc_read(buf, sizeof(buf));
            if (count) {
                return buf[0];
            }
        }
        __WFI();
    }
}
