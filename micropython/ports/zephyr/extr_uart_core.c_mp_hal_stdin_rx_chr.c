
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_getchar () ;
 int zephyr_getchar () ;

int mp_hal_stdin_rx_chr(void) {



    return zephyr_getchar();

}
