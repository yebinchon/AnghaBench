#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
#define  ADJUST 132 
#define  KC_RACL 131 
 int /*<<< orphan*/  KC_RALT ; 
#define  LOWER 130 
#define  RAISE 129 
#define  RGBRST 128 
 int /*<<< orphan*/  RGB_current_mode ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TAPPING_TERM ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oled_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC13(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
#ifdef OLED_DRIVER_ENABLE
        oled_timer = timer_read32();
#endif
    // set_timelog();
  }
  static uint16_t my_colon_timer;

  switch (keycode) {
    case LOWER:
      if (record->event.pressed) {
        FUNC4(_LOWER);
        FUNC12(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC3(_LOWER);
        FUNC12(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case RAISE:
      if (record->event.pressed) {
        FUNC4(_RAISE);
        FUNC12(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC3(_RAISE);
        FUNC12(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case ADJUST:
        if (record->event.pressed) {
          FUNC4(_ADJUST);
        } else {
          FUNC3(_ADJUST);
        }
        return false;
    case KC_RACL:
        if (record->event.pressed) {
          my_colon_timer = FUNC9();
          FUNC5(KC_RALT);
        } else {
          FUNC11(KC_RALT);
          if (FUNC8(my_colon_timer) < TAPPING_TERM) {
            FUNC0(":"); // Change the character(s) to be sent on tap here
          }
        }
        return false;
    case RGBRST:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          eeconfig_update_rgblight_default();
          rgblight_enable();
          RGB_current_mode = rgblight_config.mode;
        }
      #endif
      #ifdef RGB_MATRIX_ENABLE
        if (record->event.pressed) {
          eeconfig_update_rgb_matrix_default();
          rgb_matrix_enable();
        }
      #endif
      break;
  }
  return true;
}