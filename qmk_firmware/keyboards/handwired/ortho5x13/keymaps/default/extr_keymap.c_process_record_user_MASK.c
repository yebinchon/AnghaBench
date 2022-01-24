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
#define  BACKLIT 133 
#define  COLEMAK 132 
#define  DVORAK 131 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _COLEMAK ; 
 unsigned long _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case QWERTY:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_qwerty);
            #endif
            FUNC4(1UL<<_QWERTY);
          }
          return false;
          break;
        case COLEMAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC4(1UL<<_COLEMAK);
          }
          return false;
          break;
        case DVORAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dvorak);
            #endif
            FUNC4(1UL<<_DVORAK);
          }
          return false;
          break;
        case LOWER:
          if (record->event.pressed) {
            FUNC3(_LOWER);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC2(_LOWER);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case RAISE:
          if (record->event.pressed) {
            FUNC3(_RAISE);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC2(_RAISE);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case BACKLIT:
          if (record->event.pressed) {
            FUNC5(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
          } else {
            FUNC6(KC_RSFT);
          }
          return false;
          break;
      }
    return true;
}