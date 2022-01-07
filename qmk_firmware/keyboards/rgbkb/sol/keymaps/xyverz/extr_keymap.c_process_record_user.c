
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int MOD_MASK_SHIFT ;




 int _COLEMAK ;
 int _DESTINY ;
 int _DVORAK ;
 int _QWERTY ;
 int eeconfig_update_rgb_matrix_default () ;
 int eeconfig_update_rgblight_default () ;
 int get_mods () ;
 int rgb_encoder_state ;
 int rgb_matrix_increase_flags () ;
 int rgblight_enable () ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
   switch (keycode) {
    case 132:
        set_single_persistent_default_layer(_DVORAK);
      return 0;
    case 133:
        set_single_persistent_default_layer(_DESTINY);
      return 0;
    case 131:
        set_single_persistent_default_layer(_QWERTY);
      return 0;
    case 134:
        set_single_persistent_default_layer(_COLEMAK);
      return 0;
    case 130:






      return 0;







    case 129:
      return 0;
    }
  }
  return 1;
}
