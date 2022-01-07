
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


 int KC_RALT ;
 int KC_RCTL ;
 int KC_RGUI ;
 int KC_RSFT ;
 int const* MACRO_NONE ;
 int PLAY_SONG (int ) ;
 int _SETUP ;

 int currentOs ;
 int layer_off (int const) ;
 int layer_on (int const) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer (int const,int const,int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 130:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<130);
          }
          break;
        case 138:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<138);
          }
          break;
        case 137:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<137);
          }
          break;
        case 134:
          if (record->event.pressed) {
            layer_on(134);
            update_tri_layer(134, 129, _SETUP);
          } else {
            layer_off(134);
            update_tri_layer(134, 129, _SETUP);
          }
          break;
        case 129:
          if (record->event.pressed) {
            layer_on(129);
            update_tri_layer(134, 129, _SETUP);
          } else {
            layer_off(129);
            update_tri_layer(134, 129, _SETUP);
          }
          break;
        case 136:
          if (record->event.pressed) {
            layer_on(136);
          } else {
            layer_off(136);
          }
        break;
        case 132:
          if (record->event.pressed) {
            register_code(KC_RSFT);
            register_code(KC_RCTL);
            register_code(KC_RALT);
            register_code(KC_RGUI);
          } else {
            unregister_code(KC_RSFT);
            unregister_code(KC_RCTL);
            unregister_code(KC_RALT);
            unregister_code(KC_RGUI);
          }
        break;
        case 131:
          if (record->event.pressed) {
            layer_on(currentOs);
          } else {
            layer_off(133);
            layer_off(128);
            layer_off(135);
          }
        break;
        case 133:
        case 128:
        case 135:
          if (record->event.pressed) {
            layer_off(currentOs);
            currentOs = id;
          }
        break;
      }
    return MACRO_NONE;
}
