
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target_lcd_color; } ;
typedef TYPE_1__ visualizer_state_t ;
typedef int uint32_t ;
typedef int keyframe_animation_t ;


 int next_led_target_color ;

bool swap_led_target_color(keyframe_animation_t* animation, visualizer_state_t* state) {
    uint32_t temp = next_led_target_color;
    next_led_target_color = state->target_lcd_color;
    state->target_lcd_color = temp;
    return 0;
}
