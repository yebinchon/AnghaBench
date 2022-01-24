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
 int /*<<< orphan*/  KC_RALT ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RGUI ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  _COLEMAK 138 
#define  _DVORAK 137 
#define  _FCT 136 
#define  _LIN 135 
#define  _LOWER 134 
#define  _MAC 133 
#define  _MICMUTE 132 
#define  _OS 131 
#define  _QWERTY 130 
#define  _RAISE 129 
 int /*<<< orphan*/  _SETUP ; 
#define  _WIN 128 
 int currentOs ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int const,int const,int /*<<< orphan*/ ) ; 

const macro_t *FUNC7(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case _QWERTY:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_qwerty);
            #endif
            FUNC3(1UL<<_QWERTY);
          }
          break;
        case _COLEMAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC3(1UL<<_COLEMAK);
          }
          break;
        case _DVORAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dvorak);
            #endif
            FUNC3(1UL<<_DVORAK);
          }
          break;
        case _LOWER:
          if (record->event.pressed) {
            FUNC2(_LOWER);
            FUNC6(_LOWER, _RAISE, _SETUP);
          } else {
            FUNC1(_LOWER);
            FUNC6(_LOWER, _RAISE, _SETUP);
          }
          break;
        case _RAISE:
          if (record->event.pressed) {
            FUNC2(_RAISE);
            FUNC6(_LOWER, _RAISE, _SETUP);
          } else {
            FUNC1(_RAISE);
            FUNC6(_LOWER, _RAISE, _SETUP);
          }
          break;
        case _FCT:
          if (record->event.pressed) {
            FUNC2(_FCT);
          } else {
            FUNC1(_FCT);
          }
        break;
        case _MICMUTE:
          if (record->event.pressed) {
            FUNC4(KC_RSFT);
            FUNC4(KC_RCTL);
            FUNC4(KC_RALT);
            FUNC4(KC_RGUI);
          } else {
            FUNC5(KC_RSFT);
            FUNC5(KC_RCTL);
            FUNC5(KC_RALT);
            FUNC5(KC_RGUI);
          }
        break;
        case _OS:
          if (record->event.pressed) {
            FUNC2(currentOs);
          } else {
            FUNC1(_MAC);
            FUNC1(_WIN);
            FUNC1(_LIN);
          }
        break;
        case _MAC:
        case _WIN:
        case _LIN:
          if (record->event.pressed) {
            FUNC1(currentOs);
            currentOs = id;
          }
        break;
      }
    return MACRO_NONE;
}