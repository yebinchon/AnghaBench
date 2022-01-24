#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  layer_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSV_AZURE ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_LIGHT ; 
 int /*<<< orphan*/  RGB_CLEAR ; 
#define  _NAVI 132 
#define  _NUMP 131 
#define  _OVERWATCH 130 
#define  _QWERTY 129 
#define  _SYMB 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

layer_state_t FUNC6(layer_state_t state) {
  switch (FUNC0(state)) {
    case _QWERTY:
      FUNC1(RGBLIGHT_MODE_STATIC_LIGHT);
      FUNC2(RGB_CLEAR);
      break;
    case _SYMB:
      FUNC5();
      break;
    case _NUMP:
      FUNC4();
      break;
    case _OVERWATCH:
      FUNC3();
      // TODO set up animated rainbow swirl with overwatch colors.
      // rgblight_mode_noeeprom(RGBLIGHT_MODE_RAINBOW_SWIRL);
      // rgblight_effect_breathing(&animation_status);
      // rgblight_mode_noeeprom(RGBLIGHT_MODE_BREATHING + 3);
      break;
    case _NAVI:
      FUNC2(HSV_AZURE);
      break;
    default: //  for any other layers, or the default layer
      break;
    }
  return state;
}