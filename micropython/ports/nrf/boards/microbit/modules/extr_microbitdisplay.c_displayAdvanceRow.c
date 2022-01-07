
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ strobe_row; int* pins_for_brightness; } ;
typedef TYPE_1__ microbit_display_obj_t ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int** image_buffer; } ;


 int COLUMN_COUNT ;
 int COLUMN_PINS_MASK ;
 int MAX_BRIGHTNESS ;
 int MIN_COLUMN_PIN ;
 scalar_t__ MIN_ROW_PIN ;
 int NRF_GPIO ;
 scalar_t__ ROW_COUNT ;
 TYPE_3__** display_map ;
 TYPE_2__ microbit_display_obj ;
 int nrf_gpio_pin_clear (scalar_t__) ;
 int nrf_gpio_pin_set (scalar_t__) ;
 int nrf_gpio_port_out_clear (int ,int) ;
 int nrf_gpio_port_out_set (int ,int ) ;

__attribute__((used)) static void displayAdvanceRow(microbit_display_obj_t * p_display) {

    nrf_gpio_port_out_set(NRF_GPIO, COLUMN_PINS_MASK);

    nrf_gpio_pin_clear(p_display->strobe_row + MIN_ROW_PIN);





    p_display->strobe_row++;


    if (p_display->strobe_row == ROW_COUNT) {
        p_display->strobe_row = 0;
    }



    for (int i = 0; i <= MAX_BRIGHTNESS; i++) {
        p_display->pins_for_brightness[i] = 0;
    }
    for (int i = 0; i < COLUMN_COUNT; i++) {
        int x = display_map[i][p_display->strobe_row].x;
        int y = display_map[i][p_display->strobe_row].y;
        int brightness = microbit_display_obj.image_buffer[x][y];
        p_display->pins_for_brightness[brightness] |= (1<<(i+MIN_COLUMN_PIN));
        (void)brightness;
    }

    nrf_gpio_pin_set(p_display->strobe_row + MIN_ROW_PIN);

    nrf_gpio_port_out_clear(NRF_GPIO, p_display->pins_for_brightness[MAX_BRIGHTNESS]);
}
