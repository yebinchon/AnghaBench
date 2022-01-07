
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ RGBLED_NUM ;
 scalar_t__ effect_end_pos ;
 scalar_t__ effect_num_leds ;
 scalar_t__ effect_start_pos ;

void rgblight_set_effect_range(uint8_t start_pos, uint8_t num_leds) {
    if (start_pos >= RGBLED_NUM) return;
    if (start_pos + num_leds > RGBLED_NUM) return;
    effect_start_pos = start_pos;
    effect_end_pos = start_pos + num_leds;
    effect_num_leds = num_leds;
}
