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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  BACKLIT 132 
#define  DATA 131 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _DATA ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  default_layer_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC7(_QWERTY);
        #ifdef BACKLIGHT_BREATHING
          breathing_self_disable();
        #endif
      }
      return false;
      break;
    case DATA:
      if (record->event.pressed) {
        FUNC7(_DATA);
        #ifdef BACKLIGHT_BREATHING
          breathing_enable();
        #endif
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC5(_LOWER);
        uint8_t default_layer = FUNC1(default_layer_state);
        if (default_layer == _QWERTY) {
          #ifdef BACKLIGHT_BREATHING
            breathing_enable();
          #endif
        }
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC4(_LOWER);
        uint8_t default_layer = FUNC1(default_layer_state);
        if (default_layer == _QWERTY) {
          #ifdef BACKLIGHT_BREATHING
            breathing_self_disable();
          #endif
        }
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC5(_RAISE);
        uint8_t default_layer = FUNC1(default_layer_state);
        if (default_layer == _QWERTY) {
          #ifdef BACKLIGHT_BREATHING
            breathing_enable();
          #endif
        }
        FUNC9(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC4(_RAISE);
        uint8_t default_layer = FUNC1(default_layer_state);
        if (default_layer == _QWERTY) {
          #ifdef BACKLIGHT_BREATHING
            breathing_self_disable();
          #endif
        }
        FUNC9(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        FUNC6(KC_RSFT);
        #ifdef BACKLIGHT_BREATHING
          backlight_step();
        #endif
      } else {
        FUNC8(KC_RSFT);
      }
      return false;
      break;
  }
  return true;
}