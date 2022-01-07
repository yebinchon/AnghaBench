
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_BIT_RATE_115200 ;
 int mp_hal_rtc_init () ;
 scalar_t__ uart_attached_to_dupterm ;
 int uart_init (int ,int ) ;

void mp_hal_init(void) {

    mp_hal_rtc_init();
    uart_init(UART_BIT_RATE_115200, UART_BIT_RATE_115200);
    uart_attached_to_dupterm = 0;
}
