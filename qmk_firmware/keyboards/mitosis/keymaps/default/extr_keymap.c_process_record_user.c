
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int KC_APP ;
 int KC_ESC ;
 int KC_F1 ;
 int KC_F12 ;
 int KC_LSFT ;
 int KC_MNXT ;
 int KC_MPLY ;
 int KC_RBRC ;
 int KC_VOLD ;
 int KC_VOLU ;
 int LAYER_TOGGLE_DELAY ;
 int LONGPRESS_DELAY ;
 int MOD_LSFT ;




 scalar_t__ _FUNCSHIFT ;
 int _FUNCTION ;
 int _SHIFTED ;
 scalar_t__ biton32 (int ) ;
 int key_timer ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int layer_state ;
 int register_code (int ) ;
 int register_mods (int ) ;
 int singular_key ;
 int tap_code (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;
 int unregister_mods (int ) ;
 int update_tri_layer (int ,int ,scalar_t__) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

 uint8_t layer;
  layer = biton32(layer_state);


  switch (keycode) {
  case 132:
   if (record->event.pressed) {
      key_timer = timer_read();
      singular_key = 1;
     layer_on(_FUNCTION);
   } else {
      if (timer_elapsed(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        layer_off(_FUNCTION);
      }
   }
    update_tri_layer(_FUNCTION, _SHIFTED, _FUNCSHIFT);
   return 0;
   break;

  case 128:
   if (record->event.pressed) {
      key_timer = timer_read();
      singular_key = 1;
     layer_on(_SHIFTED);
     register_code(KC_LSFT);
   } else {
     if (timer_elapsed(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        layer_off(_SHIFTED);
       unregister_code(KC_LSFT);
      }
    }
    update_tri_layer(_FUNCTION, _SHIFTED, _FUNCSHIFT);
   return 0;
   break;

  case 129:
      if (record->event.pressed) {
        key_timer = timer_read();
      } else {
        if (timer_elapsed(key_timer) > LONGPRESS_DELAY) {
            tap_code(KC_MPLY);
          } else {
            tap_code(KC_VOLU);
          }
      }
      return 0;


  case 130:
      if (record->event.pressed) {
        key_timer = timer_read();
      } else {
        if (timer_elapsed(key_timer) > LONGPRESS_DELAY) {
            tap_code(KC_MNXT);
          } else {
            tap_code(KC_VOLD);
          }
      }
      return 0;


  case 131:
      if (record->event.pressed) {
        key_timer = timer_read();
      } else {
        if (timer_elapsed(key_timer) > LONGPRESS_DELAY) {
            tap_code(KC_APP);
          } else {
            tap_code(KC_ESC);
          }
      }
      return 0;



  default:
    singular_key = 0;
    break;
  }


  if (layer == _FUNCSHIFT) {


   if ( (keycode >= KC_F1 && keycode <= KC_F12)
      || keycode == KC_RBRC ) {
    if (record->event.pressed) {
              unregister_mods(MOD_LSFT);
          } else {
              register_mods(MOD_LSFT);
          }
   }
  }

  return 1;
}
