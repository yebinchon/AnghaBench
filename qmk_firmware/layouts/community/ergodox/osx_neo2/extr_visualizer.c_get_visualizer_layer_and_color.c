
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layer; } ;
struct TYPE_5__ {char* layer_text; void* target_lcd_color; TYPE_1__ status; } ;
typedef TYPE_2__ visualizer_state_t ;
typedef int uint8_t ;



 void* LCD_COLOR (int,int,int) ;





 int biton32 (int ) ;

__attribute__((used)) static void get_visualizer_layer_and_color(visualizer_state_t *state) {
  uint8_t layer = biton32(state->status.layer);


  switch (layer) {

    case 133:

      state->layer_text = "FUNCTION KEYS";
      state->target_lcd_color = LCD_COLOR(228, 73, 245);
      break;
    case 128:

      state->layer_text = "QWERTY";
      state->target_lcd_color = LCD_COLOR(17, 102, 245);
      break;
    case 129:

      state->layer_text = "NEO: 6";
      state->target_lcd_color = LCD_COLOR(35, 102, 245);
      break;
    case 130:

      state->layer_text = "NEO: 5";
      state->target_lcd_color = LCD_COLOR(63, 102, 245);
      break;
    case 131:

      state->layer_text = "NEO: 4";
      state->target_lcd_color = LCD_COLOR(112, 101, 189);
      break;
    case 132:

      state->layer_text = "NEO: 3";
      state->target_lcd_color = LCD_COLOR(143, 102, 245);
      break;
    default:

      state->layer_text = "NEO: 1";
      state->target_lcd_color = LCD_COLOR(0, 0, 255);
      break;
  }
}
