
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


typedef scalar_t__ uint32_t ;
typedef size_t mp_uint_t ;
struct TYPE_7__ {int DATA; } ;
struct TYPE_8__ {TYPE_1__ bit; } ;
struct TYPE_9__ {int DRE; } ;
struct TYPE_11__ {TYPE_3__ bit; } ;
struct TYPE_10__ {TYPE_2__ DATA; TYPE_5__ INTFLAG; } ;
struct TYPE_12__ {TYPE_4__ USART; } ;


 TYPE_6__* USARTx ;
 int __WFI () ;
 scalar_t__ tud_cdc_connected () ;
 scalar_t__ tud_cdc_write (char const*,scalar_t__) ;
 int tud_cdc_write_flush () ;

void mp_hal_stdout_tx_strn(const char *str, mp_uint_t len) {
    if (tud_cdc_connected()) {
        for (size_t i = 0; i < len;) {
            uint32_t n = len - i;
            uint32_t n2 = tud_cdc_write(str + i, n);
            if (n2 < n) {
                while (!tud_cdc_write_flush()) {
                    __WFI();
                }
            }
            i += n2;
        }
        while (!tud_cdc_write_flush()) {
            __WFI();
        }
    }
    while (len--) {
        while (!(USARTx->USART.INTFLAG.bit.DRE)) { }
        USARTx->USART.DATA.bit.DATA = *str++;
    }
}
