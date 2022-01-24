#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
#define  BACKLIT 138 
#define  COLEMAK 137 
#define  EXT_PLV 136 
#define  GUI_UNDS 135 
 int /*<<< orphan*/  KC_9 ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_MINS ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 134 
#define  LSFT_LPRN 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 132 
#define  QWERTY 131 
#define  QWOC 130 
#define  RAISE 129 
#define  SDTOGG 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _QWOC ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__ keymap_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  tone_coin ; 
 int /*<<< orphan*/  tone_goodbye ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_plover_gb ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC16(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case QWERTY:
            if (record->event.pressed) {
                FUNC10(_QWERTY);

                FUNC11(_QWERTY);
            }
            return false;

        case COLEMAK:
            if (record->event.pressed) {
                FUNC10(_COLEMAK);

                FUNC11(_COLEMAK);
            }
            return false;

        case QWOC:
            if (record->event.pressed) {
                FUNC10(_QWOC);

                FUNC11(_QWOC);
            }
            return false;

        case LOWER:
            if (record->event.pressed) {
                FUNC7(_LOWER);
                FUNC15(_LOWER, _RAISE, _ADJUST);
            } else {
                FUNC6(_LOWER);
                FUNC15(_LOWER, _RAISE, _ADJUST);
            }
            return false;

        case RAISE:
            if (record->event.pressed) {
                FUNC7(_RAISE);
                FUNC15(_LOWER, _RAISE, _ADJUST);
            } else {
                FUNC6(_RAISE);
                FUNC15(_LOWER, _RAISE, _ADJUST);
            }
            return false;

        case BACKLIT:
            if (record->event.pressed) {
                FUNC9(KC_RSFT);
                #ifdef BACKLIGHT_ENABLE
                    backlight_step();
                #endif
            } else {
                FUNC14(KC_RSFT);
            }
            return false;

        case PLOVER:
            if (record->event.pressed) {
                #ifdef AUDIO_ENABLE
                    stop_all_notes();
                    PLAY_SONG(tone_plover);
                #endif
                FUNC6(_RAISE);
                FUNC6(_LOWER);
                FUNC6(_ADJUST);
                FUNC7(_PLOVER);
                if (!FUNC3()) {
                        FUNC2();
                }
                keymap_config.raw = FUNC4();
                keymap_config.nkro = 1;
                FUNC5(keymap_config.raw);
            }
            return false;

        case EXT_PLV:
            if (record->event.pressed) {
                #ifdef AUDIO_ENABLE
                    PLAY_SONG(tone_plover_gb);
                #endif
                FUNC6(_PLOVER);
            }
            return false;

        case SDTOGG:
            if (record->event.pressed) {
                bool enabled = FUNC13();

                #ifdef AUDIO_ENABLE
                    if (enabled) {
                        PLAY_SONG(tone_coin);
                    } else {
                        PLAY_SONG(tone_goodbye);
                    }
                #endif
            }
            return false;

        // Macros

        // 1. Hold for LGUI, tap for Underscore
        case GUI_UNDS:
            FUNC8(record, KC_LGUI, KC_LSFT, KC_MINS);
            return false;

        // 2. Hold for LSHIFT, tap for Parens open
        case LSFT_LPRN:
            FUNC8(record, KC_LSFT, KC_LSFT, KC_9);
            return false;

        default:
            return true;
    }
    return true;
}