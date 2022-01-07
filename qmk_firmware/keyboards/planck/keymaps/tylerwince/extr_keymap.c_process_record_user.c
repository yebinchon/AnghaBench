
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int sat; int hue; int val; } ;





 int disable_layer_color ;
 TYPE_3__ rgb_matrix_config ;
 int rgb_matrix_sethsv (int ,int ,int) ;
 int rgblight_mode (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
      if (record->event.pressed) {
        rgblight_mode(1);
      }
      return 0;
    case 129:
  if (record->event.pressed) {
    if (rgb_matrix_config.val) {
      rgb_matrix_sethsv(rgb_matrix_config.hue, rgb_matrix_config.sat, 0);
    } else {
      rgb_matrix_sethsv(rgb_matrix_config.hue, rgb_matrix_config.sat, 255);
    }
  }
  return 0;
    case 128:
      if (record->event.pressed) {
        disable_layer_color ^= 1;
      }
      return 0;
  }
  return 1;
}
