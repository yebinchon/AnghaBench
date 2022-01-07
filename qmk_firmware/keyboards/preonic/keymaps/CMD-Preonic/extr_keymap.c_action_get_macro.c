
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


 int KC_RSFT ;
 int const* MACRO_NONE ;

 int PLAY_SONG (int ) ;
 int _ADJUST ;
 int backlight_step () ;
 int layer_off (int const) ;
 int layer_on (int const) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer (unsigned long const,int const,int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 129:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<129);
          }
          break;
        case 134:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<134);
          }
          break;
        case 133:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<133);
          }
          break;
        case 132:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<132);
          }
          break;
        case 130:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<130);
          }
          break;
        case 135:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<131);
          }
          break;
        case 131:
          if (record->event.pressed) {
            layer_on(131);
            update_tri_layer(131, 128, _ADJUST);
          } else {
            layer_off(131);
            update_tri_layer(131, 128, _ADJUST);
          }
          break;
        case 128:
          if (record->event.pressed) {
            layer_on(128);
            update_tri_layer(131, 128, _ADJUST);
          } else {
            layer_off(128);
            update_tri_layer(131, 128, _ADJUST);
          }
          break;
        case 136:
          if (record->event.pressed) {
            register_code(KC_RSFT);



          } else {
            unregister_code(KC_RSFT);
          }
        break;
      }
    return MACRO_NONE;
}
