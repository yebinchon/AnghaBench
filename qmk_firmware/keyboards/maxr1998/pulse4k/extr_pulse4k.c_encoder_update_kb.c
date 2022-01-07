
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int encoder_one_update (int) ;
 int encoder_two_update (int) ;
 scalar_t__ led_adjust_active ;
 int rgblight_decrease_hue () ;
 int rgblight_decrease_val () ;
 int rgblight_increase_hue () ;
 int rgblight_increase_val () ;

void encoder_update_kb(uint8_t index, bool clockwise) {
    if (index == 0) {
        if (led_adjust_active) {
            if (clockwise) {
                rgblight_increase_val();
            } else {
                rgblight_decrease_val();
            }
        } else encoder_one_update(clockwise);
    } else if (index == 1) {
        if (led_adjust_active) {
            if (clockwise) {
                rgblight_increase_hue();
            } else {
                rgblight_decrease_hue();
            }
        } else encoder_two_update(clockwise);
    }
}
