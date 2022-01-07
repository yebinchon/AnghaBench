
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
 int biton32 (int ) ;
 int default_layer_state ;

__attribute__((used)) static void get_visualizer_layer_and_color(visualizer_state_t* state) {
  switch(biton32(default_layer_state)) {
    case 130:
      state->layer_text = "QWERTY";
      state->target_lcd_color = LCD_COLOR(0, 255, 128);
      break;
    case 128:
      state->layer_text = "Workman";
      state->target_lcd_color = LCD_COLOR(80, 255, 128);
      break;
    case 135:
      state->layer_text = "Dvorak";
      state->target_lcd_color = LCD_COLOR(194, 255, 128);
      break;
    case 136:
      state->layer_text = "Colemak";
      state->target_lcd_color = LCD_COLOR(18, 255, 128);
      break;
  }

  switch(biton32(state->status.layer)) {
    case 133:
      state->layer_text = "Lower";
      state->target_lcd_color = LCD_COLOR(141, 255, 255);
      break;
    case 129:
      state->layer_text = "Raise";
      state->target_lcd_color = LCD_COLOR(18, 255, 255);
      break;
    case 137:
      state->layer_text = "Adjust";
      state->target_lcd_color = LCD_COLOR(194, 255, 255);
      break;
    case 131:
      state->layer_text = "Numpad";
      state->target_lcd_color = LCD_COLOR(80, 255, 255);
      break;
    case 132:
      state->layer_text = "Mouse";
      state->target_lcd_color = LCD_COLOR(300, 255, 255);
      break;
    case 134:
      state->layer_text = "Game";
      state->target_lcd_color = LCD_COLOR(300, 255, 255);
      break;
    case 130: case 128: case 135: case 136:
      break;
    default:
      state->layer_text = "NONE";
      state->target_lcd_color = LCD_COLOR(0, 255, 255);
      break;
  }
}
