
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
 int _FC ;
 int _NP ;
 int _PL ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_4__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int plover_off ;
 int plover_on ;
 int stop_all_notes () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      if (record->event.pressed) {





        layer_off(_NP);
        layer_off(_FC);
        layer_on(_PL);

        if (!eeconfig_is_enabled()) {
            eeconfig_init();
        }

        keymap_config.raw = eeconfig_read_keymap();
        keymap_config.nkro = 1;
        eeconfig_update_keymap(keymap_config.raw);
      }
      return 0;
    case 129:
      if (record->event.pressed) {




        layer_off(_NP);
        layer_off(_PL);
        layer_off(_FC);
      }
      return 0;
    }
    return 1;
}
