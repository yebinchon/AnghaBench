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
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  QWERTY 136 
#define  RGB_LEVEL_DOWN 135 
#define  RGB_LEVEL_UP 134 
#define  STK_ALT 133 
#define  STK_CLEAR 132 
#define  STK_CTRL 131 
#define  STK_GUI 130 
#define  STK_META 129 
#define  STK_SHIFT 128 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int modifier_already_applied ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ physically_held_modifiers ; 
 int rgb_dimming ; 
 int /*<<< orphan*/  tone_qwerty ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_NOTE_ARRAY(tone_qwerty, false, 0);
        #endif
        FUNC4(1UL<<_QWERTY);
      }
      return false;
      break;
    case STK_SHIFT:
      FUNC3(KC_LSFT, record->event.pressed);
      return false;
      break;
    case STK_CTRL:
      FUNC3(KC_LCTL, record->event.pressed);
      return false;
      break;
    case STK_ALT:
      FUNC3(KC_LALT, record->event.pressed);
      return false;
      break;
    case STK_GUI:
      FUNC3(KC_LGUI, record->event.pressed);
      return false;
      break;
    case STK_META:
      FUNC3(KC_LCTL, record->event.pressed);
      FUNC3(KC_LALT, record->event.pressed);
      FUNC3(KC_LGUI, record->event.pressed);
      return false;
      break;
    case STK_CLEAR:
      if (record->event.pressed) {
        FUNC2();
      }
      return false;
      break;
    case RGB_LEVEL_DOWN:
      if (record->event.pressed && rgb_dimming < 8) {
        rgb_dimming++;
      }
      return false;
      break;
    case RGB_LEVEL_UP:
      if (record->event.pressed && rgb_dimming > 0) {
        rgb_dimming--;
      }
      return false;
      break;
  }
  if (!record->event.pressed && FUNC0(keycode)) {
    modifier_already_applied = true;
    if (physically_held_modifiers == 0)
      FUNC2();
  }
  return true;
}