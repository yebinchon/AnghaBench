
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int leds; int layer; } ;
struct TYPE_5__ {char* layer_text; void* target_lcd_color; TYPE_1__ status; } ;
typedef TYPE_2__ visualizer_state_t ;
typedef int uint8_t ;


 void* LCD_COLOR (int,int,int) ;
 unsigned int USB_LED_CAPS_LOCK ;

__attribute__((used)) static void get_visualizer_layer_and_color(visualizer_state_t* state) {
    uint8_t saturation = 60;
    if (state->status.leds & (1u << USB_LED_CAPS_LOCK)) {
        saturation = 255;
    }
    if (state->status.layer & 0x80) {
        state->target_lcd_color = LCD_COLOR(0, 255, 60);
        state->layer_text = "Game Arrow";
    } else if (state->status.layer & 0x40) {
        state->target_lcd_color = LCD_COLOR(0, 255, 60);
        state->layer_text = "Game";
    } else if (state->status.layer & 0x20) {
        state->target_lcd_color = LCD_COLOR(140, 100, 60);
        state->layer_text = "Movement";
    } else if (state->status.layer & 0x10) {
        state->target_lcd_color = LCD_COLOR(0, saturation, 0xFF);
        state->layer_text = "Media";
    } else if (state->status.layer & 0x8) {
        state->target_lcd_color = LCD_COLOR(168, saturation, 0xFF);
        state->layer_text = "Symbol";
    } else if (state->status.layer & 0x2 || state->status.layer & 0x4) {
        state->target_lcd_color = LCD_COLOR(216, 90, 0xFF);
        state->layer_text = "Code";
    } else {
        state->target_lcd_color = LCD_COLOR(84, saturation, 0xFF);
        state->layer_text = "Default";
    }
}
