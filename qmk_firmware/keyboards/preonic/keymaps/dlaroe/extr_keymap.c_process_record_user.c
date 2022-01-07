
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




 int KC_RSFT ;

 int PLAY_SONG (int ) ;


 int _ADJUST ;
 unsigned long _ARROW ;
 int _LOWER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 int backlight_step () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case 129:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<_QWERTY);
          }
          return 0;
          break;
        case 132:
          if (record->event.pressed) {
            persistent_default_layer_set(1UL<<_ARROW);
          }
          return 0;
          break;
        case 130:
          if (record->event.pressed) {
            layer_on(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          } else {
            layer_off(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          }
          return 0;
          break;
        case 128:
          if (record->event.pressed) {
            layer_on(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          } else {
            layer_off(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          }
          return 0;
          break;
        case 131:
          if (record->event.pressed) {
            register_code(KC_RSFT);



          } else {
            unregister_code(KC_RSFT);
          }
          return 0;
          break;
      }
    return 1;
}
