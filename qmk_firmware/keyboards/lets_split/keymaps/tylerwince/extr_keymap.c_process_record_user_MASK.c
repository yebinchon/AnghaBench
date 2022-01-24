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
#define  ADJUST 133 
#define  COLEMAK 132 
#define  DVORAK 131 
#define  LOWER 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        #ifdef RGBLIGHT_ENABLE
          set_qwerty();
        #endif
        FUNC7(_QWERTY);
      }
      return false;
    case COLEMAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_colemak);
        #endif
        FUNC7(_COLEMAK);
      }
      return false;
    case DVORAK:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(tone_dvorak);
        #endif
        FUNC7(_DVORAK);
      }
      return false;
    case LOWER:
      if (record->event.pressed) {
        #ifdef RGBLIGHT_ENABLE
          set_lower();
        #endif
        FUNC2(_LOWER);
        FUNC8(_LOWER, _RAISE, _ADJUST);
      } else {
        #ifdef RGBLIGHT_ENABLE
          set_qwerty();
        #endif
        FUNC1(_LOWER);
        FUNC8(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case RAISE:
      if (record->event.pressed) {
        #ifdef RGBLIGHT_ENABLE
          set_raise();
        #endif
        FUNC2(_RAISE);
        FUNC8(_LOWER, _RAISE, _ADJUST);
      } else {
        #ifdef RGBLIGHT_ENABLE
          set_qwerty();
        #endif
        FUNC1(_RAISE);
        FUNC8(_LOWER, _RAISE, _ADJUST);
      }
      return false;
    case ADJUST:
      if (record->event.pressed) {
        #ifdef RGBLIGHT_ENABLE
          set_adjust();
        #endif
        FUNC2(_ADJUST);
      } else {
        #ifdef RGBLIGHT_ENABLE
          set_qwerty();
        #endif
        FUNC1(_ADJUST);
      }
      return false;
  }
  return true;
}