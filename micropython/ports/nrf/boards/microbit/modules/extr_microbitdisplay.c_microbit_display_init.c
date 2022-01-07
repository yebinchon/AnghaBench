
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ROW_PIN ;
 int MIN_COLUMN_PIN ;
 int nrf_gpio_cfg_output (int) ;

void microbit_display_init(void) {

    for (int i = MIN_COLUMN_PIN; i <= MAX_ROW_PIN; i++) {
        nrf_gpio_cfg_output(i);
    }
}
