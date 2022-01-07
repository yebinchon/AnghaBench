
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layer; } ;
struct TYPE_5__ {char* layer_text; int target_lcd_color; TYPE_1__ status; } ;
typedef TYPE_2__ visualizer_state_t ;
typedef int uint8_t ;


 int LCD_COLOR (int,int,int) ;
 int biton32 (int ) ;

__attribute__((used)) static void get_visualizer_layer_and_color(visualizer_state_t* state) {
    uint8_t saturation = 255;

    uint8_t layer = biton32(state->status.layer);
    state->target_lcd_color = LCD_COLOR(layer << 2, saturation, 0xFF);

    switch(layer) {
        case 133:
            state->layer_text = "QWERTY";
            break;
        case 139:
            state->layer_text = "COLEMAK";
            break;
        case 132:
            state->layer_text = "QWERTY on COLEMAK";
            break;
        case 137:
            state->layer_text = "LOWER";
            break;
        case 131:
            state->layer_text = "RAISE";
            break;
        case 134:
            state->layer_text = "PLOVER";
            break;
        case 129:
            state->layer_text = "SUPERDUPER";
            break;
        case 130:
            state->layer_text = "SUPER";
            break;
        case 138:
            state->layer_text = "DUPER";
            break;
        case 135:
            state->layer_text = "MOUSE";
            break;
        case 140:
            state->layer_text = "ADJUST";
            break;
        case 136:
            state->layer_text = "MDIA";
            break;
        case 128:
            state->layer_text = "SYMB";
            break;
        default:
            state->layer_text = "NONE";
            break;
    }
}
