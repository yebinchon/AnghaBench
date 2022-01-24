#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int swap_lalt_lgui; } ;

/* Variables and functions */
#define  COLEMAK 136 
#define  DVORAK 135 
#define  EUCALYN 134 
 int /*<<< orphan*/  KC_LANG1 ; 
 int /*<<< orphan*/  KC_LANG2 ; 
#define  KC_ZERO2 133 
#define  KC_xEISU 132 
#define  KC_xKANA 131 
#define  KEYPAD 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QWERTY 129 
#define  RGBRST 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _EUCALYN ; 
 int /*<<< orphan*/  _KEYPAD ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_qwerty);
        #endif
        FUNC7(_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_colemak);
        #endif
        FUNC7(_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_dvorak);
        #endif
        FUNC7(_DVORAK);
      }
      return false;
      break;
    case EUCALYN:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_dvorak);
        #endif
        FUNC7(_EUCALYN);
      }
      return false;
      break;
    case KEYPAD:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_dvorak);
        #endif
        FUNC7(_KEYPAD);
      }
      return false;
      break;
    case KC_ZERO2:
      if (record->event.pressed) {
          FUNC1("00");
      }
      return false;
      break;
    case KC_xEISU:
      if (record->event.pressed) {
        if(keymap_config.swap_lalt_lgui==false){
          FUNC4(KC_LANG2);
        }else{
          FUNC1(FUNC2("`"));
        }
      } else {
        FUNC6(KC_LANG2);
      }
      return false;
      break;
    case KC_xKANA:
      if (record->event.pressed) {
        if(keymap_config.swap_lalt_lgui==false){
          FUNC4(KC_LANG1);
        }else{
          FUNC1(FUNC2("`"));
        }
      } else {
        FUNC6(KC_LANG1);
      }
      return false;
      break;
    case RGBRST:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          eeconfig_update_rgblight_default();
          rgblight_enable();
        }
      #endif
      break;
  }
  return true;
}