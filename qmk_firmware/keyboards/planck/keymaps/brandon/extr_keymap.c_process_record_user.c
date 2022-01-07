
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int raw; } ;


 unsigned long BASE_COLEMAK_LAYER ;
 unsigned long BASE_QWERTY_LAYER ;
 int BASE_STENO_LAYER ;

 int KEYBOARD_LAYER ;

 int LOWER_LAYER ;




 int RAISE_LAYER ;

 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_4__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistant_default_layer_set (unsigned long) ;
 int plover_lookup () ;
 int plover_resume () ;
 int plover_suspend () ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
      if (record->event.pressed) {
        persistant_default_layer_set(1UL<<BASE_QWERTY_LAYER);
      }
      return 0;
    case 134:
      if (record->event.pressed) {
        persistant_default_layer_set(1UL<<BASE_COLEMAK_LAYER);
      }
      return 0;
    case 133:
      if (record->event.pressed) {
        layer_on(LOWER_LAYER);
        update_tri_layer(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      } else {
        layer_off(LOWER_LAYER);
        update_tri_layer(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      }
      return 0;
    case 129:
      if (record->event.pressed) {
        layer_on(RAISE_LAYER);
        update_tri_layer(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      } else {
        layer_off(RAISE_LAYER);
        update_tri_layer(LOWER_LAYER, RAISE_LAYER, KEYBOARD_LAYER);
      }
      return 0;
    case 128:
      if (record->event.pressed) {
        layer_off(RAISE_LAYER);
        layer_off(LOWER_LAYER);
        layer_off(KEYBOARD_LAYER);
        layer_on(BASE_STENO_LAYER);
        if (!eeconfig_is_enabled()) {
          eeconfig_init();
        }
        keymap_config.raw = eeconfig_read_keymap();
        keymap_config.nkro = 1;
        eeconfig_update_keymap(keymap_config.raw);
        plover_resume();
      }
      return 0;
    case 132:
      if (record->event.pressed) {
        plover_suspend();
        layer_off(BASE_STENO_LAYER);
      }
      return 0;
    case 131:
      if (record->event.pressed) {
        plover_lookup();
      }
      return 0;
  }
  return 1;
}
