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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  M_BL 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ADJUST ; 
#define  _ARROW 135 
#define  _COLEMAK 134 
#define  _DVORAK 133 
#define  _GAME 132 
#define  _LOWER 131 
#define  _NUMPAD 130 
#define  _QWERTY 129 
#define  _RAISE 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long const,int const,int /*<<< orphan*/ ) ; 

const macro_t *FUNC8(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case _QWERTY:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_qwerty);
            #endif
            FUNC4(1UL<<_QWERTY);
          }
          break;
        case _COLEMAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC4(1UL<<_COLEMAK);
          }
          break;
        case _DVORAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dvorak);
            #endif
            FUNC4(1UL<<_DVORAK);
          }
          break;
        case _GAME:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC4(1UL<<_GAME);
          }
          break;
        case _NUMPAD:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dvorak);
            #endif
            FUNC4(1UL<<_NUMPAD);
          }
          break;
        case _ARROW:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC4(1UL<<_LOWER);
          }
          break;
        case _LOWER:
          if (record->event.pressed) {
            FUNC3(_LOWER);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC2(_LOWER);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          }
          break;
        case _RAISE:
          if (record->event.pressed) {
            FUNC3(_RAISE);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC2(_RAISE);
            FUNC7(_LOWER, _RAISE, _ADJUST);
          }
          break;
        case M_BL:
          if (record->event.pressed) {
            FUNC5(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
          } else {
            FUNC6(KC_RSFT);
          }
        break;
      }
    return MACRO_NONE;
}