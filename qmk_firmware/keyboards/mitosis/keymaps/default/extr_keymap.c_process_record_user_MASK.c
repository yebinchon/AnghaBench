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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  FNKEY 132 
 int /*<<< orphan*/  KC_APP ; 
 int /*<<< orphan*/  KC_ESC ; 
 int KC_F1 ; 
 int KC_F12 ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_MNXT ; 
 int /*<<< orphan*/  KC_MPLY ; 
 int KC_RBRC ; 
 int /*<<< orphan*/  KC_VOLD ; 
 int /*<<< orphan*/  KC_VOLU ; 
 int /*<<< orphan*/  LAYER_TOGGLE_DELAY ; 
 int /*<<< orphan*/  LONGPRESS_DELAY ; 
 int /*<<< orphan*/  MOD_LSFT ; 
#define  M_ESCM 131 
#define  M_VOLD 130 
#define  M_VOLU 129 
#define  SHIFT 128 
 scalar_t__ _FUNCSHIFT ; 
 int /*<<< orphan*/  _FUNCTION ; 
 int /*<<< orphan*/  _SHIFTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int singular_key ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {

	uint8_t layer;
  layer = FUNC0(layer_state);  // get the current layer

  //custom layer handling for tri_layer,
  switch (keycode) {
  case FNKEY:
  	if (record->event.pressed) {
      key_timer = FUNC7();
      singular_key = true;
    	FUNC2(_FUNCTION);
  	} else {
      if (FUNC6(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        FUNC1(_FUNCTION);
      }
  	}
    FUNC10(_FUNCTION, _SHIFTED, _FUNCSHIFT);
  	return false;
  	break;
  //SHIFT is handled as LSHIFT in the general case
  case SHIFT:
  	if (record->event.pressed) {
      key_timer = FUNC7();
      singular_key = true;
    	FUNC2(_SHIFTED);
    	FUNC3(KC_LSFT);
  	} else {
    	if (FUNC6(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        FUNC1(_SHIFTED);
    	  FUNC8(KC_LSFT);
      }
    }
    FUNC10(_FUNCTION, _SHIFTED, _FUNCSHIFT);
  	return false;
  	break;
  //switch multiplexing for media, short tap for volume up, long press for play/pause
  case M_VOLU:
      if (record->event.pressed) {
        key_timer = FUNC7(); // if the key is being pressed, we start the timer.
      } else { // this means the key was just released, so we can figure out how long it was pressed for (tap or "held down").
        if (FUNC6(key_timer) > LONGPRESS_DELAY) { // LONGPRESS_DELAY being 150ms, the threshhold we pick for counting something as a tap.
            FUNC5(KC_MPLY);
          } else {
            FUNC5(KC_VOLU);
          }
      }
      return false;

  //switch multiplexing for media, short tap for volume down, long press for next track
  case M_VOLD:
      if (record->event.pressed) {
        key_timer = FUNC7();
      } else {
        if (FUNC6(key_timer) > LONGPRESS_DELAY) {
            FUNC5(KC_MNXT);
          } else {
            FUNC5(KC_VOLD);
          }
      }
      return false;

  //switch multiplexing for escape, short tap for escape, long press for context menu
  case M_ESCM:
      if (record->event.pressed) {
        key_timer = FUNC7();
      } else {
        if (FUNC6(key_timer) > LONGPRESS_DELAY) {
            FUNC5(KC_APP);
          } else {
            FUNC5(KC_ESC);
          }
      }
      return false;

  //If any other key was pressed during the layer mod hold period,
  //then the layer mod was used momentarily, and should block latching
  default:
    singular_key = false;
    break;
  }

  //FUNCSHIFT has been shifted by the SHIFT handling, some keys need to be excluded
  if (layer == _FUNCSHIFT) {
  	//F1-F12 should be sent as unshifted keycodes,
  	//and ] needs to be unshifted or it is sent as }
  	if ( (keycode >= KC_F1 && keycode <= KC_F12)
  	   || keycode == KC_RBRC ) {
  		if (record->event.pressed) {
              FUNC9(MOD_LSFT);
          } else {
              FUNC4(MOD_LSFT);
          }
  	}
  }

  return true;
}