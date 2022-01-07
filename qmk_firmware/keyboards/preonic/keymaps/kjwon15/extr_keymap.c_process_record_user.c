
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




 int KC_ESC ;
 int KC_LCTL ;
 int KC_SPC ;

 int MOD_BIT (int ) ;




 int TAPPING_TERM ;
 int _ADJUST ;
 int _BLANK ;
 int _LOWER ;
 int _MOUSE ;
 int _PURE ;
 int _QWERTY ;
 int _RAISE ;
 int cntl_interrupted ;
 int cntl_timer ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int mouse_interrupted ;
 int mouse_timer ;
 int register_mods (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int tap_code (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_mods (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case 130:
          if (record->event.pressed) {
            set_single_persistent_default_layer(_QWERTY);
          }
          return 0;
          break;
        case 131:
          if (record->event.pressed) {
            set_single_persistent_default_layer(_PURE);
          }
          return 0;
          break;
        case 134:
          if (record->event.pressed) {
            set_single_persistent_default_layer(_BLANK);
          }
          return 0;
          break;
        case 132:
          if (record->event.pressed) {
            layer_on(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          } else {
            layer_off(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          }
          return 0;
          break;
        case 129:
          if (record->event.pressed) {
            layer_on(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          } else {
            layer_off(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          }
          return 0;
          break;
        case 133:
          if (record->event.pressed) {
           cntl_interrupted = 0;
           cntl_timer = timer_read();
           register_mods(MOD_BIT(KC_LCTL));
          } else if (!cntl_interrupted && timer_elapsed(cntl_timer) < TAPPING_TERM) {
           unregister_mods(MOD_BIT(KC_LCTL));
           tap_code(KC_ESC);
          } else {
           unregister_mods(MOD_BIT(KC_LCTL));
          }
          return 0;
          break;

        case 128:
          if (record->event.pressed) {
           mouse_interrupted = 0;
           mouse_timer = timer_read();

           cntl_interrupted = 1;
           layer_on(_MOUSE);
          } else if (!mouse_interrupted && timer_elapsed(mouse_timer) < TAPPING_TERM) {
           layer_off(_MOUSE);
           tap_code(KC_SPC);
          } else {
           layer_off(_MOUSE);
          }
          return 0;
          break;

        default:
          cntl_interrupted = 1;
          mouse_interrupted = 1;
          break;
      }
    return 1;
}
