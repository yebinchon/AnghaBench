
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DR ;
 int UART_FR ;
 int get32 (int ) ;

char uart_recv(void) {
    while (1) {
        if (!(get32(UART_FR) & (1 << 4))) break;
    }
    return (get32(UART_DR) & 0xFF);
}
