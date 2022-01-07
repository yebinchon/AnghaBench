
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;


 int KC_BSPC ;
 int KC_DEL ;

 int bsdel_mods ;
 TYPE_4__* keyboard_report ;
 int register_code (int ) ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
      case 128: {
        uint8_t kc = KC_BSPC;

        if (record->event.pressed) {
            if (keyboard_report->mods) {
                kc = KC_DEL;
            }
            register_code (kc);
            bsdel_mods = keyboard_report->mods;
        }
        else {
            if (bsdel_mods) {
                kc = KC_DEL;
            }
            unregister_code (kc);
        }

        return 0;
        break;
    }
  }
  return 1;
}
