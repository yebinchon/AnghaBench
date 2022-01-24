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
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int DYN_REC_STOP ; 
 int /*<<< orphan*/  KC_POWER ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  MACSLEEP 130 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  USEFNMODS 129 
#define  USENUMMODS 128 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _QWERTY ; 
 unsigned long _QWERTYNUMMODS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int singular_key ; 
 int /*<<< orphan*/  tone_fnmac ; 
 int /*<<< orphan*/  tone_fnpc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record)
{
    uint16_t macro_kc = (keycode == FUNC0(_ADJUST) ? DYN_REC_STOP : keycode);
    if (!FUNC5(macro_kc, record))
    {
        return false;
    }
    FUNC4(" ");
    FUNC3("process record");

    switch (keycode)
    {
    case MACSLEEP:
        if (record->event.pressed)
        {
            // ACTION_MODS_KEY(MOD_LCTL | MOD_LSFT, KC_POWER);
            FUNC6(KC_RSFT);
            FUNC6(KC_RCTL);
            FUNC6(KC_POWER);
            FUNC7(KC_POWER);
            FUNC7(KC_RCTL);
            FUNC7(KC_RSFT);
        }
        return false;
        break;
    case USEFNMODS:
        if (record->event.pressed)
        {
            FUNC2(1UL << _QWERTY);
#ifdef AUDIO_ENABLE
            PLAY_NOTE_ARRAY(tone_fnpc, false, 0);
#endif
            FUNC3("Space-FN");
        }
        return false;
        break;
    case USENUMMODS:
        if (record->event.pressed)
        {
            FUNC2(1UL << _QWERTYNUMMODS);
#ifdef AUDIO_ENABLE
            PLAY_NOTE_ARRAY(tone_fnmac, false, 0);
#endif
            FUNC3("Space-Numpad");
        }
        return false;
        break;
    default:
        singular_key = false;
        break;
    }

    return true;
}