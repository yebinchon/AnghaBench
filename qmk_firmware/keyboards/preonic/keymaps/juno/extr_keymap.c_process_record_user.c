
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
 int PORTE ;


 int USB_LED_CAPS_LOCK ;
 int _ADJUST ;
 int _COLEMAK ;
 int _DPAD ;
 int _DVORAK ;
 int _FN1 ;
 int _LOWER ;
 int _QWERTY ;
 int _RAISE ;
 int backlight_step () ;
 int caps_song_off ;
 int caps_song_on ;
 int dpad_song_off ;
 int dpad_song_on ;
 int host_keyboard_leds () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case 129:
          if (record->event.pressed) {
            set_single_persistent_default_layer(_QWERTY);
          }
          return 0;
          break;
        case 135:
          if (record->event.pressed) {
            set_single_persistent_default_layer(_COLEMAK);
          }
          return 0;
          break;
        case 132:
          if (record->event.pressed) {
            set_single_persistent_default_layer(_DVORAK);
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
        case 136:
          if (record->event.pressed) {
            register_code(KC_RSFT);



            PORTE &= ~(1<<6);
          } else {
            unregister_code(KC_RSFT);
            PORTE |= (1<<6);
          }
          return 0;
          break;





  case 131:
   if (record->event.pressed) {







   }
   return 1;


  case 133:
   if (record->event.pressed) {

   } else {





    layer_off(_FN1);
    layer_on(_DPAD);
   }

  case 134:
   if (record->event.pressed) {






    layer_off(_DPAD);
   }

      }
    return 1;
}
