
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


 int PLAY_SONG (int ) ;



 unsigned long _PLOVER ;
 unsigned long _QWERTY ;
 unsigned long _WORKMAN ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_4__ keymap_config ;
 int persistent_default_layer_set (unsigned long) ;
 int tone_plover ;
 int tone_qwerty ;
 int tone_workman ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_WORKMAN);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {



        if (!eeconfig_is_enabled()) {
          eeconfig_init();
        }
        keymap_config.raw = eeconfig_read_keymap();
        keymap_config.nkro = 1;
        eeconfig_update_keymap(keymap_config.raw);
        persistent_default_layer_set(1UL<<_PLOVER);
      }
      return 0;
      break;
  }
  return 1;
}
