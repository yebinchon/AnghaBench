
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int enable; } ;
struct TYPE_5__ {scalar_t__ w; scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;
typedef TYPE_1__ LED_TYPE ;


 int RGBLED_NUM ;
 int clipping_num_leds ;
 int clipping_start_pos ;
 size_t effect_end_pos ;
 size_t effect_start_pos ;
 TYPE_1__* led ;
 int * led_map ;
 size_t pgm_read_byte (int *) ;
 TYPE_3__ rgblight_config ;
 int ws2812_setleds (TYPE_1__*,int ) ;

void rgblight_set(void) {
    LED_TYPE *start_led;
    uint16_t num_leds = clipping_num_leds;

    if (!rgblight_config.enable) {
        for (uint8_t i = effect_start_pos; i < effect_end_pos; i++) {
            led[i].r = 0;
            led[i].g = 0;
            led[i].b = 0;



        }
    }







    start_led = led + clipping_start_pos;

    ws2812_setleds(start_led, num_leds);
}
