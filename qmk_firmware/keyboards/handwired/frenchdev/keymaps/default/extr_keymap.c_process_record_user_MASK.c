#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  BP_C ; 
 int /*<<< orphan*/  BP_F ; 
 int /*<<< orphan*/  BP_V ; 
 int /*<<< orphan*/  BP_X ; 
 int /*<<< orphan*/  BP_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_BTN1 ; 
 int /*<<< orphan*/  KC_BTN2 ; 
 int /*<<< orphan*/  KC_INS ; 
 int /*<<< orphan*/  KC_SLCK ; 
 int /*<<< orphan*/  KEY_DELAY ; 
#define  L2INS 140 
#define  L2LOC 139 
#define  M_CP 138 
#define  M_CUT 137 
#define  M_L1E 136 
#define  M_LP 135 
#define  M_PS 134 
#define  M_RP 133 
#define  M_SE 132 
#define  M_SF 131 
#define  M_SFS 130 
#define  M_SFU 129 
#define  M_UN 128 
 int /*<<< orphan*/  PEDAL_DELAY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  key_timer_1 ; 
 int /*<<< orphan*/  key_timer_2 ; 
 int /*<<< orphan*/  key_timer_left_pedal ; 
 int /*<<< orphan*/  key_timer_right_pedal ; 
 int /*<<< orphan*/  key_timer_shift ; 
 int l2_locked ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

bool FUNC13(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case M_LP: //left pedal
      if (record->event.pressed) {
        FUNC3(1);
        FUNC6 (KC_SLCK);
        key_timer_left_pedal = FUNC11(); // if the key is being pressed, we start the timer.
      } else {
        if (FUNC10(key_timer_left_pedal) < KEY_DELAY) {
           FUNC8 (KC_BTN2);
        }
        FUNC12 (KC_SLCK);
        FUNC2(1);
      }
      break;
    case M_RP: //right pedal
      if (record->event.pressed) {
        FUNC3(2);
        key_timer_right_pedal = FUNC11(); // if the key is being pressed, we start the timer.
      } else {
        if (FUNC10(key_timer_right_pedal) < PEDAL_DELAY) {
           FUNC8 (KC_BTN1);
        }
        FUNC2(2);
      }
      break;
    case M_SF: // shift, using macro to keep track of shift state and avoid inserting nbsp by mistake
      if (record->event.pressed) {
        FUNC1();
      } else {
        FUNC7();
      }
      break;
    case M_SFS: // shift when held, space when tapped
      if (record->event.pressed) {
        FUNC1();
        key_timer_shift = FUNC11(); // if the key is being pressed, we start the timer.
      } else {
        if (FUNC10(key_timer_shift) < KEY_DELAY) {
          FUNC5();
        }
        FUNC7();
      }
      break;
    case M_SFU: // shift when held, _ when tapped
      if (record->event.pressed) {
        FUNC1();
        key_timer_shift = FUNC11(); // if the key is being pressed, we start the timer.
      } else {
        if (FUNC10(key_timer_shift) < KEY_DELAY) {
          FUNC5();
        }
        FUNC7();
      }
      break;
    case M_L1E: // L1 when held, space when tapped
      if (record->event.pressed) {
        FUNC3(1);
        key_timer_1 = FUNC11(); // if the key is being pressed, we start the timer.
      } else {
        if (FUNC10(key_timer_1) < KEY_DELAY) {
          FUNC4();
        }
        FUNC2(1);
      }
      break;
    case L2INS: //activate layer 2, if released before 100ms trigger INS. basicaly equivalent to LT(2, KC_INS) but without delay for activation of layer 2
      if (record->event.pressed) {
        FUNC3(2);
        key_timer_2 = FUNC11(); // if the key is being pressed, we start the timer.
      } else {
        if (FUNC10(key_timer_2) < KEY_DELAY) {
           FUNC8 (KC_INS);
        }
        l2_locked = 0;
        FUNC2(2);
      }
      break;
    case L2LOC: //lock L2
      if (record->event.pressed) {
        key_timer_2 = FUNC11(); // if the key is being pressed, we start the timer.
        FUNC3(2);
      } else {
        if (FUNC10(key_timer_2) < KEY_DELAY && l2_locked == 0) {
          l2_locked = 1;
          FUNC3(2);
        } else {
          l2_locked = 0;
          FUNC2(2);
        }
      }
      break;
    case M_UN: // undo
      if (record->event.pressed) {
        FUNC9(FUNC0(BP_Z));
      }
      break;
    case M_CUT: // cut
      if (record->event.pressed) {
        FUNC9(FUNC0(BP_X));
      }
      break;
    case M_CP: // copy
      if (record->event.pressed) {
        FUNC9(FUNC0(BP_C));
      }
      break;
    case M_PS: // paste
      if (record->event.pressed) {
        FUNC9(FUNC0(BP_V));
      }
      break;
    case M_SE: // search
      if (record->event.pressed) {
        FUNC9(FUNC0(BP_F));
      }
      break;
  }
  return true;
}