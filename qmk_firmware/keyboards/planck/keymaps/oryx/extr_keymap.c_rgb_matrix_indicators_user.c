
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_layer_led; } ;


 int LED_FLAG_NONE ;
 int biton32 (int ) ;
 scalar_t__ g_suspend_state ;
 TYPE_1__ keyboard_config ;
 int layer_state ;
 int rgb_matrix_get_flags () ;
 int rgb_matrix_set_color_all (int ,int ,int ) ;
 int set_layer_color (int) ;

void rgb_matrix_indicators_user(void) {
  if (g_suspend_state || keyboard_config.disable_layer_led) { return; }
  switch (biton32(layer_state)) {
    case 0:
      set_layer_color(0);
      break;
    case 3:
      set_layer_color(1);
      break;
    case 4:
      set_layer_color(2);
      break;
    case 6:
      set_layer_color(3);
      break;
   default:
    if (rgb_matrix_get_flags() == LED_FLAG_NONE)
      rgb_matrix_set_color_all(0, 0, 0);
    break;
  }
}
