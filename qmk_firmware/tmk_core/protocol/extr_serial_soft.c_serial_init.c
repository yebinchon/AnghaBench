
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_SOFT_DEBUG_INIT () ;
 int SERIAL_SOFT_RXD_INIT () ;
 int SERIAL_SOFT_TXD_INIT () ;

void serial_init(void) {
    SERIAL_SOFT_DEBUG_INIT();

    SERIAL_SOFT_RXD_INIT();
    SERIAL_SOFT_TXD_INIT();
}
