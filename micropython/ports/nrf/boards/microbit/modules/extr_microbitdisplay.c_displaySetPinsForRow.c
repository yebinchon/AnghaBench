
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int* pins_for_brightness; } ;
typedef TYPE_1__ microbit_display_obj_t ;


 int COLUMN_PINS_MASK ;
 int NRF_GPIO ;
 int nrf_gpio_pin_set (int) ;
 int nrf_gpio_port_out_clear (int ,int) ;

__attribute__((used)) static inline void displaySetPinsForRow(microbit_display_obj_t * p_display, uint8_t brightness) {
    if (brightness == 0) {
        nrf_gpio_port_out_clear(NRF_GPIO, COLUMN_PINS_MASK & ~p_display->pins_for_brightness[brightness]);
    } else {
        nrf_gpio_pin_set(p_display->pins_for_brightness[brightness]);
    }
}
