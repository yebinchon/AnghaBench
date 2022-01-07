
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target_lcd_color; int current_lcd_color; } ;
typedef TYPE_1__ visualizer_state_t ;


 int LCD_STATE_INITIAL ;
 int default_startup_animation ;
 int initial_color ;
 int lcd_state ;
 int logo_background_color ;
 int start_keyframe_animation (int *) ;

void user_visualizer_resume(visualizer_state_t* state) {
    state->current_lcd_color = initial_color;
    state->target_lcd_color = logo_background_color;
    lcd_state = LCD_STATE_INITIAL;
    start_keyframe_animation(&default_startup_animation);
}
