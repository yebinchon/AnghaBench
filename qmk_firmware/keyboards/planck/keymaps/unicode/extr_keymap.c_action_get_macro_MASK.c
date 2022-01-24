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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  L ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  M_BL 133 
 int /*<<< orphan*/  O ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 
 int const _ADJUST ; 
#define  _COLEMAK 132 
#define  _DVORAK 131 
#define  _LOWER 130 
 int const _PLOVER ; 
#define  _QWERTY 129 
#define  _RAISE 128 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__ keymap_config ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int const) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  tone_colemak ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_plover_gb ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int const,int const,int const) ; 

const macro_t *FUNC16(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case _QWERTY:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_qwerty);
            #endif
            FUNC11(1UL<<_QWERTY);
          }
          break;
        case _COLEMAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_colemak);
            #endif
            FUNC11(1UL<<_COLEMAK);
          }
          break;
        case _DVORAK:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dvorak);
            #endif
            FUNC11(1UL<<_DVORAK);
          }
          break;
        case _LOWER:
          if (record->event.pressed) {
            FUNC10(_LOWER);
            FUNC15(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC9(_LOWER);
            FUNC15(_LOWER, _RAISE, _ADJUST);
          }
          break;
        case _RAISE:
          if (record->event.pressed) {
            FUNC10(_RAISE);
            FUNC15(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC9(_RAISE);
            FUNC15(_LOWER, _RAISE, _ADJUST);
          }
          break;
        case M_BL:
          if (record->event.pressed) {
            FUNC12(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
          } else {
            FUNC14(KC_RSFT);
          }
        break;
        case 12:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              stop_all_notes();
              PLAY_SONG(tone_plover);
            #endif
            FUNC9(_RAISE);
            FUNC9(_LOWER);
            FUNC9(_ADJUST);
            FUNC10(_PLOVER);
            if (!FUNC6()) {
                FUNC5();
            }
            keymap_config.raw = FUNC7();
            keymap_config.nkro = 1;
            FUNC8(keymap_config.raw);
          }
        break;
        case 13:
          if (record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(tone_plover_gb);
            #endif
            FUNC9(_PLOVER);
          }
        break;
        case 14:
          if (record->event.pressed) {
            return FUNC1( FUNC0(E), FUNC0(R), FUNC0(F), FUNC0(V), FUNC0(O), FUNC0(L), FUNC3(E), FUNC3(R), FUNC3(F), FUNC3(V), FUNC3(O), FUNC3(L), END );
          }
        break;
      }
    return MACRO_NONE;
}