
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int mp_uint_t ;


 int CONFIG_UART_CONSOLE_ON_DEV_NAME ;
 int console_putchar (char) ;
 struct device* device_get_binding (int ) ;
 int k_sleep (int) ;
 int uart_poll_out (struct device*,int ) ;

void mp_hal_stdout_tx_strn(const char *str, mp_uint_t len) {
    static struct device *uart_console_dev;
    if (uart_console_dev == ((void*)0)) {
        uart_console_dev = device_get_binding(CONFIG_UART_CONSOLE_ON_DEV_NAME);
    }

    while (len--) {
        uart_poll_out(uart_console_dev, *str++);
    }

}
