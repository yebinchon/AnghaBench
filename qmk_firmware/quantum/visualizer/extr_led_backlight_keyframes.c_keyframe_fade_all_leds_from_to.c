
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int keyframe_animation_t ;
typedef int color_t ;


 int LED_DISPLAY ;
 int LUMA2COLOR (int ) ;
 int fade_led_color (int *,int ,int ) ;
 int gdispGClear (int ,int ) ;

__attribute__((used)) static void keyframe_fade_all_leds_from_to(keyframe_animation_t* animation, uint8_t from, uint8_t to) {
    uint8_t luma = fade_led_color(animation, from, to);
    color_t color = LUMA2COLOR(luma);
    gdispGClear(LED_DISPLAY, color);
}
