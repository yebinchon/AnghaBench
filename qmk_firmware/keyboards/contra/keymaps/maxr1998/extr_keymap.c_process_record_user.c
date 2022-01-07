
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int DE_SS ;

 int KC_LSFT ;


 int KC_RSFT ;
 int MOD_BIT (int ) ;
 int _NR ;
 int _NR_L3 ;
 int get_mods () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer_user () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 130:
      if (record->event.pressed) {
        if (get_mods() & (MOD_BIT(KC_LSFT) | MOD_BIT(KC_RSFT))) {
          register_code(DE_SS);
          return 0;
        }
      } else {
        unregister_code(DE_SS);
      }
      return 1;
    case 128:
      if (record->event.pressed) {
        layer_on(_NR);
      } else {
        layer_off(_NR);
      }
      update_tri_layer_user();
      return 0;
    case 129:
      if (record->event.pressed) {
        layer_on(_NR_L3);
      } else {
        layer_off(_NR_L3);
      }
      update_tri_layer_user();
      return 0;
    default:
      return 1;
  }
}
