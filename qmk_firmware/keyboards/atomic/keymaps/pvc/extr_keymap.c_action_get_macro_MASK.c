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
 int /*<<< orphan*/  LAYER_ADJUST ; 
 int /*<<< orphan*/  LAYER_FUNCTION ; 
 int /*<<< orphan*/  LAYER_LOWER ; 
 int /*<<< orphan*/  LAYER_MOUSE ; 
 unsigned long LAYER_QWERTY ; 
 int /*<<< orphan*/  LAYER_UPPER ; 
#define  MACRO_BACKLIGHT 153 
#define  MACRO_BREATH_DEFAULT 152 
#define  MACRO_BREATH_SPEED_DEC 151 
#define  MACRO_BREATH_SPEED_INC 150 
#define  MACRO_BREATH_TOGGLE 149 
#define  MACRO_FUNCTION 148 
#define  MACRO_HELP_1 147 
#define  MACRO_HELP_2 146 
#define  MACRO_HELP_3 145 
#define  MACRO_HELP_4 144 
#define  MACRO_HELP_5 143 
#define  MACRO_HELP_6 142 
#define  MACRO_HELP_7 141 
#define  MACRO_HELP_8 140 
#define  MACRO_HELP_9 139 
#define  MACRO_LOWER 138 
#define  MACRO_MOUSE 137 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  MACRO_QWERTY 136 
#define  MACRO_TEMPO_D 135 
#define  MACRO_TEMPO_U 134 
#define  MACRO_TIMBRE_1 133 
#define  MACRO_TIMBRE_2 132 
#define  MACRO_TIMBRE_3 131 
#define  MACRO_TIMBRE_4 130 
#define  MACRO_TONE_DEFAULT 129 
#define  MACRO_UPPER 128 
 int /*<<< orphan*/  TEMPO_DEFAULT ; 
 int /*<<< orphan*/  TIMBRE_12 ; 
 int /*<<< orphan*/  TIMBRE_25 ; 
 int /*<<< orphan*/  TIMBRE_50 ; 
 int /*<<< orphan*/  TIMBRE_75 ; 
 int /*<<< orphan*/  TIMBRE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

const macro_t *FUNC19(keyrecord_t *record, uint8_t id, uint8_t opt) {

  // MACRODOWN only works in this function
  switch(id) {

        case MACRO_HELP_1:
            if (record->event.pressed)
            {
        FUNC18("1");
            }
            break;

        case MACRO_HELP_2:
            if (record->event.pressed)
            {
        FUNC18("2");
            }
            break;

        case MACRO_HELP_3:
            if (record->event.pressed)
            {
        FUNC18("3");
            }
            break;

        case MACRO_HELP_4:
            if (record->event.pressed)
            {
        FUNC18("4");
            }
            break;

        case MACRO_HELP_5:
            if (record->event.pressed)
            {
        FUNC18("5");
            }
            break;

        case MACRO_HELP_6:
            if (record->event.pressed)
            {
        FUNC18("6");
            }
            break;

        case MACRO_HELP_7:
            if (record->event.pressed)
            {
        FUNC18("7");
            }
            break;

        case MACRO_HELP_8:
            if (record->event.pressed)
            {
        FUNC18("8");
            }
            break;

        case MACRO_HELP_9:
            if (record->event.pressed)
            {
        FUNC18("9");
            }
            break;

        case MACRO_BREATH_TOGGLE:
            if (record->event.pressed)
            {
                FUNC8();
            }
            break;

        case MACRO_BREATH_SPEED_INC:
            if (record->event.pressed)
            {
                FUNC4();
            }
            break;

        case MACRO_BREATH_SPEED_DEC:
            if (record->event.pressed)
            {
                FUNC2();
            }
            break;

        case MACRO_BREATH_DEFAULT:
            if (record->event.pressed)
            {
                FUNC3();
            }
            break;

        case MACRO_QWERTY:
            if (record->event.pressed)
            {
                FUNC14(1UL<<LAYER_QWERTY);
            }
            break;

        case MACRO_UPPER:
            if (record->event.pressed)
            {
                FUNC13(LAYER_UPPER);
                FUNC5(2);
                FUNC6();
                FUNC17(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            else
            {
                FUNC12(LAYER_UPPER);
                FUNC17(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            break;

        case MACRO_LOWER:
            if (record->event.pressed)
            {
                FUNC13(LAYER_LOWER);
                FUNC5(2);
                FUNC6();
                FUNC17(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            else
            {
                FUNC12(LAYER_LOWER);
                FUNC17(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            break;

        case MACRO_FUNCTION:
            if (record->event.pressed)
            {
                FUNC5(3);
                FUNC1();
                FUNC13(LAYER_FUNCTION);
            }
            else
            {
                FUNC5(1);
                FUNC7();
                FUNC12(LAYER_FUNCTION);
            }
            break;

#ifdef MOUSEKEY_ENABLE

        case MACRO_MOUSE:
            if (record->event.pressed)
            {
                layer_invert(LAYER_MOUSE);
            }
            break;

#endif /* MOUSEKEY_ENABLE */

#ifdef AUDIO_ENABLE

        case MACRO_TIMBRE_1:
            if (record->event.pressed) set_timbre(TIMBRE_12);
            break;

        case MACRO_TIMBRE_2:
            if (record->event.pressed) set_timbre(TIMBRE_25);
            break;

        case MACRO_TIMBRE_3:
            if (record->event.pressed) set_timbre(TIMBRE_50);
            break;

        case MACRO_TIMBRE_4:
            if (record->event.pressed) set_timbre(TIMBRE_75);
            break;

        case MACRO_TEMPO_U:
            if (record->event.pressed) increase_tempo(10);
            break;

        case MACRO_TEMPO_D:
            if (record->event.pressed) decrease_tempo(10);
            break;

        case MACRO_TONE_DEFAULT:
            if (record->event.pressed)
            {
                set_timbre(TIMBRE_DEFAULT);
                set_tempo(TEMPO_DEFAULT);
            }
            break;

/*
        case MACRO_AUDIO_TOGGLE:
            if (record->event.pressed)
            {
                    if (is_audio_on())
                    {
                        audio_off();
                    }
                    else
                    {
                        audio_on();
                        PLAY_SONG(tone_audio_on);
                    }
            }
            break;

        case MACRO_MUSIC_TOGGLE:
            if (record->event.pressed)
            {
                    if (IS_LAYER_ON(LAYER_MUSIC))
                    {
                        layer_off(LAYER_MUSIC);
                        stop_all_notes();
                    }
                    else
                    {
                    PLAY_SONG(tone_music_on);
                    layer_on(LAYER_MUSIC);
                    }
            }
            break;
        case MACRO_INC_VOICE:
            if (record->event.pressed)
            {
                #ifdef AUDIO_ENABLE
                    voice_iterate();
                    PLAY_SONG(music_scale);
                #endif
            }
            break;

        case MACRO_DEC_VOICE:
            if (record->event.pressed)
            {
                #ifdef AUDIO_ENABLE
                    voice_deiterate();
                    PLAY_SONG(music_scale);
                #endif
            }
            break;
*/

#endif /* AUDIO_ENABLE */

#ifdef BACKLIGHT_ENABLE
        case MACRO_BACKLIGHT:
            if (record->event.pressed)
            {
                backlight_step();
            }
#endif

        default:
            break;

    }
    return MACRO_NONE;
}