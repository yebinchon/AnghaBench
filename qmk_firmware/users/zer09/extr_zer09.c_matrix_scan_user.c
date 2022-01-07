
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int biton32 (int ) ;
 int c_lyr ;
 int layer_state ;
 int matrix_scan_keymap () ;
 int rainbow_loop (int ) ;
 int rgblight_set () ;
 int set_layer_led (int ) ;
 int shifted_layer () ;

void matrix_scan_user(void) {
  static uint8_t is_leds_changes = 1;
  c_lyr = biton32(layer_state);

  is_leds_changes = is_leds_changes << set_layer_led(c_lyr);
  is_leds_changes = is_leds_changes << shifted_layer();
  is_leds_changes = is_leds_changes << rainbow_loop(c_lyr);

  if (is_leds_changes > 1) {
    rgblight_set();
    is_leds_changes = 1;
  }

  matrix_scan_keymap();
}
