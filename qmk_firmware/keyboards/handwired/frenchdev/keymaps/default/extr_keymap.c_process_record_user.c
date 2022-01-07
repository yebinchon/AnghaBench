
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


 int BP_C ;
 int BP_F ;
 int BP_V ;
 int BP_X ;
 int BP_Z ;
 int C (int ) ;
 int KC_BTN1 ;
 int KC_BTN2 ;
 int KC_INS ;
 int KC_SLCK ;
 int KEY_DELAY ;
 int PEDAL_DELAY ;
 int hold_shift () ;
 int key_timer_1 ;
 int key_timer_2 ;
 int key_timer_left_pedal ;
 int key_timer_right_pedal ;
 int key_timer_shift ;
 int l2_locked ;
 int layer_off (int) ;
 int layer_on (int) ;
 int press_enter () ;
 int press_space () ;
 int register_code (int ) ;
 int release_shift () ;
 int tap_code (int ) ;
 int tap_code16 (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 135:
      if (record->event.pressed) {
        layer_on(1);
        register_code (KC_SLCK);
        key_timer_left_pedal = timer_read();
      } else {
        if (timer_elapsed(key_timer_left_pedal) < KEY_DELAY) {
           tap_code (KC_BTN2);
        }
        unregister_code (KC_SLCK);
        layer_off(1);
      }
      break;
    case 133:
      if (record->event.pressed) {
        layer_on(2);
        key_timer_right_pedal = timer_read();
      } else {
        if (timer_elapsed(key_timer_right_pedal) < PEDAL_DELAY) {
           tap_code (KC_BTN1);
        }
        layer_off(2);
      }
      break;
    case 131:
      if (record->event.pressed) {
        hold_shift();
      } else {
        release_shift();
      }
      break;
    case 130:
      if (record->event.pressed) {
        hold_shift();
        key_timer_shift = timer_read();
      } else {
        if (timer_elapsed(key_timer_shift) < KEY_DELAY) {
          press_space();
        }
        release_shift();
      }
      break;
    case 129:
      if (record->event.pressed) {
        hold_shift();
        key_timer_shift = timer_read();
      } else {
        if (timer_elapsed(key_timer_shift) < KEY_DELAY) {
          press_space();
        }
        release_shift();
      }
      break;
    case 136:
      if (record->event.pressed) {
        layer_on(1);
        key_timer_1 = timer_read();
      } else {
        if (timer_elapsed(key_timer_1) < KEY_DELAY) {
          press_enter();
        }
        layer_off(1);
      }
      break;
    case 140:
      if (record->event.pressed) {
        layer_on(2);
        key_timer_2 = timer_read();
      } else {
        if (timer_elapsed(key_timer_2) < KEY_DELAY) {
           tap_code (KC_INS);
        }
        l2_locked = 0;
        layer_off(2);
      }
      break;
    case 139:
      if (record->event.pressed) {
        key_timer_2 = timer_read();
        layer_on(2);
      } else {
        if (timer_elapsed(key_timer_2) < KEY_DELAY && l2_locked == 0) {
          l2_locked = 1;
          layer_on(2);
        } else {
          l2_locked = 0;
          layer_off(2);
        }
      }
      break;
    case 128:
      if (record->event.pressed) {
        tap_code16(C(BP_Z));
      }
      break;
    case 137:
      if (record->event.pressed) {
        tap_code16(C(BP_X));
      }
      break;
    case 138:
      if (record->event.pressed) {
        tap_code16(C(BP_C));
      }
      break;
    case 134:
      if (record->event.pressed) {
        tap_code16(C(BP_V));
      }
      break;
    case 132:
      if (record->event.pressed) {
        tap_code16(C(BP_F));
      }
      break;
  }
  return 1;
}
