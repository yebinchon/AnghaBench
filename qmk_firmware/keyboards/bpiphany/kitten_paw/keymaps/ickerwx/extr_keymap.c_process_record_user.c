
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ KC_A ;
 scalar_t__ KC_BSLS ;
 scalar_t__ KC_EXSEL ;
 scalar_t__ KC_GRV ;
 scalar_t__ KC_NONUS_BSLASH ;
 scalar_t__ KC_RBRC ;
 int MOD_LSFT ;
 scalar_t__ PROG2 ;
 scalar_t__ biton32 (int ) ;
 int layer_state ;
 int register_mods (int ) ;
 int unregister_mods (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    uint8_t layer;
    layer = biton32(layer_state);
    if (layer == PROG2) {
         if (keycode >= KC_A && keycode <= KC_EXSEL && !(

                 keycode == KC_NONUS_BSLASH ||
                 keycode == KC_RBRC ||
                 keycode == KC_BSLS ||
                 keycode == KC_GRV
            )) {

              if (record->event.pressed) {
                  register_mods(MOD_LSFT);
              } else {
                  unregister_mods(MOD_LSFT);
              }
         }
    }
    return 1;
}
