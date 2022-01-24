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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  AUDIOTEST 133 
 int DYN_REC_STOP ; 
#define  FNKEY 132 
#define  FNMAC 131 
#define  FNPC 130 
 int /*<<< orphan*/  KC_A ; 
 int KC_F1 ; 
 int KC_F12 ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_M ; 
 int /*<<< orphan*/  KC_POWER ; 
 int KC_RBRC ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  LAYER_TOGGLE_DELAY ; 
#define  MACSLEEP 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOD_LSFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SHIFT 128 
 int /*<<< orphan*/  _ADJUST ; 
 scalar_t__ _FUNCSHIFT ; 
 int /*<<< orphan*/  _FUNCTIONMAC ; 
 int /*<<< orphan*/  _FUNCTIONPC ; 
 int /*<<< orphan*/  _SHIFTED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  function_layer ; 
 int /*<<< orphan*/  key_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  music_scale ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int singular_key ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  tone_fnmac ; 
 int /*<<< orphan*/  tone_fnpc ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

bool FUNC14(uint16_t keycode, keyrecord_t *record) {
  uint16_t macro_kc = (keycode == FUNC0(_ADJUST) ? DYN_REC_STOP : keycode);
  if (!FUNC6(macro_kc, record)) {
    return false;
  }
  uint8_t layer;
  layer = FUNC2(layer_state);  // get the current layer

  //custom layer handling for tri_layer,
  switch (keycode) {
  case MACSLEEP:
    if (record->event.pressed) {
      // ACTION_MODS_KEY(MOD_LCTL | MOD_LSFT, KC_POWER);
      FUNC7(KC_RSFT);
      FUNC7(KC_RCTL);
      FUNC7(KC_POWER);
      FUNC11(KC_POWER);
      FUNC11(KC_RCTL);
      FUNC11(KC_RSFT);
    }
    return false;
    break;
  case FNKEY:
    if (record->event.pressed) {
      key_timer = FUNC10();
      singular_key = true;
      // layer_on(_FUNCTION);
      FUNC4(function_layer);
    } else {
      if (FUNC9(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        FUNC3(function_layer);
      }
    }
    FUNC13(function_layer, _SHIFTED, _FUNCSHIFT);
    return false;
    break;
  //SHIFT is handled as LSHIFT in the general case
  case SHIFT:
    if (record->event.pressed) {
      key_timer = FUNC10();
      singular_key = true;
      FUNC4(_SHIFTED);
      FUNC7(KC_LSFT);
    } else {
      if (FUNC9(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        FUNC3(_SHIFTED);
        FUNC11(KC_LSFT);
      }
    }
    FUNC13(function_layer, _SHIFTED, _FUNCSHIFT);
    return false;
    break;
  case FNPC:
    if (record->event.pressed) {
      FUNC5(_FUNCTIONPC);
      #ifdef AUDIO_ENABLE
        PLAY_SONG(tone_fnpc);
      #endif
    }
    return false;
    break;
  case FNMAC:
    if (record->event.pressed) {
      FUNC5(_FUNCTIONMAC);
      #ifdef AUDIO_ENABLE
        PLAY_SONG(tone_fnmac);
      #endif
    }
  return false;
  break;
    case AUDIOTEST:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
        PLAY_SONG(music_scale);
        register_code(KC_M);
        unregister_code(KC_M);
        #endif
        FUNC7(KC_A);
      } else {
        FUNC11(KC_A);
      }
    return false;
    break;
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
        FUNC12(MOD_LSFT);
      } else {
        FUNC8(MOD_LSFT);
      }
    }
  }

  return true;
}