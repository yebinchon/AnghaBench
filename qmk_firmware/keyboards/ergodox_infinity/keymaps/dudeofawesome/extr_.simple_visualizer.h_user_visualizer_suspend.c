
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* layer_text; int target_lcd_color; int current_lcd_color; } ;
typedef TYPE_1__ visualizer_state_t ;
typedef int uint8_t ;


 int LCD_COLOR (int ,int ,int ) ;
 int LCD_HUE (int ) ;
 int LCD_SAT (int ) ;
 int default_suspend_animation ;
 int start_keyframe_animation (int *) ;

void user_visualizer_suspend(visualizer_state_t* state) {
    state->layer_text = "Suspending...";
    uint8_t hue = LCD_HUE(state->current_lcd_color);
    uint8_t sat = LCD_SAT(state->current_lcd_color);
    state->target_lcd_color = LCD_COLOR(hue, sat, 0);
    start_keyframe_animation(&default_suspend_animation);
}
