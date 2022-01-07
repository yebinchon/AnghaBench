
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SERIAL_UART_DATA ;
 int SERIAL_UART_TXD_READY ;

void serial_send(uint8_t data) {
    while (!SERIAL_UART_TXD_READY)
        ;
    SERIAL_UART_DATA = data;
}
