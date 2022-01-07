
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HOST_LED_ON (int ) ;
 int * MAIN_COLOR ;
 int USB_LED_CAPS_LOCK ;
 size_t biton32 (int ) ;
 int layer_state ;
 int* layers_leds_map ;
 int rgb_matrix_set_color (int,int ,int ,int ) ;

void rgb_matrix_indicators_user(void) {


    if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK)) {
        rgb_matrix_set_color(8, MAIN_COLOR[0], MAIN_COLOR[1], MAIN_COLOR[2]);
    }


    rgb_matrix_set_color(layers_leds_map[biton32(layer_state)], MAIN_COLOR[0], MAIN_COLOR[1], MAIN_COLOR[2]);
}
