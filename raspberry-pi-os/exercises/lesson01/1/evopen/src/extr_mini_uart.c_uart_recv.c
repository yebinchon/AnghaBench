
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_MU_IO_REG ;
 int AUX_MU_LSR_REG ;
 int get32 (int ) ;

char uart_recv(void) {
    while (1) {
        if (get32(AUX_MU_LSR_REG) & 1) break;
    }
    return (get32(AUX_MU_IO_REG) & 0xFF);
}
