
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ target_lcd_color; char* layer_text; } ;
typedef TYPE_1__ visualizer_state_t ;
typedef int visualizer_keyboard_status_t ;
typedef scalar_t__ uint32_t ;


 int color_animation ;
 int get_visualizer_layer_and_color (TYPE_1__*) ;
 scalar_t__ initial_update ;
 int lcd_layer_display ;
 int start_keyframe_animation (int *) ;

void update_user_visualizer_state(visualizer_state_t* state, visualizer_keyboard_status_t* prev_status) {
    uint32_t prev_color = state->target_lcd_color;
    const char* prev_layer_text = state->layer_text;

    get_visualizer_layer_and_color(state);

    if (initial_update || prev_color != state->target_lcd_color) {
        start_keyframe_animation(&color_animation);
    }

    if (initial_update || prev_layer_text != state->layer_text) {
        start_keyframe_animation(&lcd_layer_display);
    }




}
