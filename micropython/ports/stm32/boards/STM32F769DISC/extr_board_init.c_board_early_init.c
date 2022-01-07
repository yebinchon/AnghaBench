
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qspi_init () ;
 int qspi_memory_map () ;

void board_early_init(void) {
    qspi_init();
    qspi_memory_map();
}
