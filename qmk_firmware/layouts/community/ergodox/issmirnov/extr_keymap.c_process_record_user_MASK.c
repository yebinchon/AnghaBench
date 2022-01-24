#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_X ; 
 int /*<<< orphan*/  KC_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TAP_TOG_LAYER 130 
#define  WKSP_LEFT 129 
#define  WKSP_RIGHT 128 
 int /*<<< orphan*/  _NAVI ; 
 int /*<<< orphan*/  _SYMB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tap_tog_count ; 
 int tap_tog_layer_other_key_pressed ; 
 int /*<<< orphan*/  tap_tog_layer_toggled_on ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  uint8_t layer = FUNC2(layer_state);
  switch (keycode) {
    case TAP_TOG_LAYER:
      FUNC3(_SYMB,record);
      return false;
      break;

    case WKSP_LEFT:
      // Only if TAP_TOG_LAYER is being held right now do we want to do actions.
      if (record->event.pressed && (!tap_tog_layer_toggled_on || layer == _NAVI)) {
        FUNC4(FUNC0(FUNC1(KC_Z)));
        tap_tog_layer_other_key_pressed = true; // Add flag so layer resets
      }
      break;
    case WKSP_RIGHT:
      // Only if TAP_TOG_LAYER is being held right now do we want to do actions.
      if (record->event.pressed && (!tap_tog_layer_toggled_on || layer == _NAVI)) {
        FUNC4(FUNC0(FUNC1(KC_X)));
        tap_tog_layer_other_key_pressed = true; // Add flag so layer resets
      }
      break;
    default:
      tap_tog_count = 0; // reset counter.
      tap_tog_layer_other_key_pressed = true; // always set this to true, TAP_TOG_LAYER handlers will handle interpreting this
      break;
  }
  return true;
}