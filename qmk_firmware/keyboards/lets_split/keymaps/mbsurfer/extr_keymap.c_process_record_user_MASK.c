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
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; int /*<<< orphan*/  val; int /*<<< orphan*/  sat; int /*<<< orphan*/  hue; } ;

/* Variables and functions */
#define  ADJUST 133 
#define  COLEMAK 132 
#define  DVORAK 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  LOWER 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  RGB_current_hue ; 
 int RGB_current_mode ; 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _COLEMAK ; 
 unsigned long _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC4(1UL<<_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC4(1UL<<_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        FUNC4(1UL<<_DVORAK);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {

        if (FUNC0(_RAISE) && FUNC0(_ADJUST)) {
          // Save current RGB info
          RGB_current_mode = rgblight_config.mode;
          RGB_current_hue = rgblight_config.hue;

          // Set RGB to Blue
          FUNC5(1);
          FUNC7(0, 0, 255);
        }

        FUNC3(_LOWER);
        FUNC8(_LOWER, _RAISE, _ADJUST);

        if (FUNC1(_ADJUST)){
          // Set RGB to cyan
          FUNC7(0, 255, 255);
        }
      } else {

        FUNC2(_LOWER);
        FUNC8(_LOWER, _RAISE, _ADJUST);

        if (FUNC0(_RAISE) && FUNC0(_ADJUST)) {
          // Reset RGB
          FUNC5(RGB_current_mode);
          FUNC6(RGB_current_hue, rgblight_config.sat, rgblight_config.val);
        } else if (FUNC1(_RAISE)){
          // Set RGB to Red
          FUNC7(0, 255, 0);
        }
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {

        if (FUNC0(_LOWER) && FUNC0(_ADJUST)) {
          // Save current RGB info
          RGB_current_mode = rgblight_config.mode;
          RGB_current_hue = rgblight_config.hue;

          // Set RGB to Green
          FUNC5(1);
          FUNC7(0, 255, 0);
        }

        FUNC3(_RAISE);
        FUNC8(_LOWER, _RAISE, _ADJUST);

        if (FUNC1(_ADJUST)){
          // Set RGB to cyan
          FUNC7(0, 255, 255);
        }
      } else {
        FUNC2(_RAISE);
        FUNC8(_LOWER, _RAISE, _ADJUST);

        if (FUNC0(_LOWER) && FUNC0(_ADJUST)) {
          // Reset RGB
          FUNC5(RGB_current_mode);
          FUNC6(RGB_current_hue, rgblight_config.sat, rgblight_config.val);
        } else if (FUNC1(_LOWER)){
          // Set RGB to Blue
          FUNC7(0, 0, 255);
        }
      }
      return false;
      break;
    case ADJUST:
      if (record->event.pressed) {
        FUNC3(_ADJUST);
      } else {
        FUNC2(_ADJUST);
      }
      return false;
      break;
  }
  return true;
}