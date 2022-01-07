
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layer; } ;
struct TYPE_5__ {char* layer_text; void* target_lcd_color; TYPE_1__ status; } ;
typedef TYPE_2__ visualizer_state_t ;


 void* LCD_COLOR (int,int,int) ;

__attribute__((used)) static void get_visualizer_layer_and_color(visualizer_state_t* state) {

    if (state->status.layer & 0x20) {

        state->target_lcd_color = LCD_COLOR(85, 255, 128);
        state->layer_text = "Gaming";
    }
    else if (state->status.layer & 0x10) {

        state->target_lcd_color = LCD_COLOR(28, 255, 230);
        state->layer_text = "Numpad & Mouse";
    }
    else if (state->status.layer & 0x8) {

        state->target_lcd_color = LCD_COLOR(38, 255, 230);
        state->layer_text = "Symbols";
    }
    else if (state->status.layer & 0x4) {

        state->target_lcd_color = LCD_COLOR(0, 255, 95);
        if (state->status.layer & 0x2){
            state->layer_text = "Qwerty - Fn";
        }else{
            state->layer_text = "Colemak - Fn";
        }
    }
    else if (state->status.layer & 0x2) {

        state->target_lcd_color = LCD_COLOR(149, 255, 192);
        state->layer_text = "Qwerty";
    }
    else {

        state->target_lcd_color = LCD_COLOR(200, 255, 192);
        state->layer_text = "Colemak";
    }
}
