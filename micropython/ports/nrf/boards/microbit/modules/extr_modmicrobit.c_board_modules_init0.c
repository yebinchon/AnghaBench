
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int microbit_display_tick ;
 int ticker_register_low_pri_callback (int ) ;

void board_modules_init0(void) {
    ticker_register_low_pri_callback(microbit_display_tick);
}
