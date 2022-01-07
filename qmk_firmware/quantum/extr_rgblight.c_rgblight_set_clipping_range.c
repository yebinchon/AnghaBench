
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;


 void* clipping_num_leds ;
 void* clipping_start_pos ;

void rgblight_set_clipping_range(uint8_t start_pos, uint8_t num_leds) {
    clipping_start_pos = start_pos;
    clipping_num_leds = num_leds;
}
