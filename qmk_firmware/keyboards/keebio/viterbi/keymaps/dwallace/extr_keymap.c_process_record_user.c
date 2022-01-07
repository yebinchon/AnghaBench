
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ IS_KEY (int) ;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_LGUI ;
 int KC_LSFT ;
 int PLAY_NOTE_ARRAY (int ,int,int ) ;
 unsigned long _QWERTY ;
 int clear_sticky_modifiers () ;
 int handle_sticky_modifier_event (int ,scalar_t__) ;
 int modifier_already_applied ;
 int persistent_default_layer_set (unsigned long) ;
 scalar_t__ physically_held_modifiers ;
 int rgb_dimming ;
 int tone_qwerty ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 136:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
      break;
    case 128:
      handle_sticky_modifier_event(KC_LSFT, record->event.pressed);
      return 0;
      break;
    case 131:
      handle_sticky_modifier_event(KC_LCTL, record->event.pressed);
      return 0;
      break;
    case 133:
      handle_sticky_modifier_event(KC_LALT, record->event.pressed);
      return 0;
      break;
    case 130:
      handle_sticky_modifier_event(KC_LGUI, record->event.pressed);
      return 0;
      break;
    case 129:
      handle_sticky_modifier_event(KC_LCTL, record->event.pressed);
      handle_sticky_modifier_event(KC_LALT, record->event.pressed);
      handle_sticky_modifier_event(KC_LGUI, record->event.pressed);
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        clear_sticky_modifiers();
      }
      return 0;
      break;
    case 135:
      if (record->event.pressed && rgb_dimming < 8) {
        rgb_dimming++;
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed && rgb_dimming > 0) {
        rgb_dimming--;
      }
      return 0;
      break;
  }
  if (!record->event.pressed && IS_KEY(keycode)) {
    modifier_already_applied = 1;
    if (physically_held_modifiers == 0)
      clear_sticky_modifiers();
  }
  return 1;
}
