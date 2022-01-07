
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int DE_LESS ;
 int KC_LSFT ;
 int const* MACRO_NONE ;
 int layer_off (int) ;
 int layer_on (int) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch(id) {
    case 0:
        if (record->event.pressed) {
            register_code(KC_LSFT);
            layer_on(1);
        } else {
            layer_off(1);
            unregister_code(KC_LSFT);
        }
        break;
    case 1:
        if (record->event.pressed) {
            unregister_code(KC_LSFT);
            register_code(DE_LESS);
        } else {
            unregister_code(DE_LESS);
        }
        break;
  }
  return MACRO_NONE;

}
