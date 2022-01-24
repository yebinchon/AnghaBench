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
#define  ACTION 131 
#define  DVORAK 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  NUMBER 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  QWERTY 128 
 int /*<<< orphan*/  _ACTION ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _FUNCTN ; 
 int /*<<< orphan*/  _NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tone_dvorak ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case QWERTY:
            if (record->event.pressed) {
                if (FUNC0(_DVORAK)) {
#ifdef AUDIO_ENABLE
                    PLAY_SONG(tone_qwerty);
#endif
                    FUNC2(_DVORAK);
                }
            }
            return false;
            break;
        case DVORAK:
            if (record->event.pressed) {
                if (!FUNC0(_DVORAK)) {
#ifdef AUDIO_ENABLE
                    PLAY_SONG(tone_dvorak);
#endif
                    FUNC3(_DVORAK);
                }
            }
            return false;
            break;
        case NUMBER:
            if (record->event.pressed) {
                FUNC3(_NUMBER);
                FUNC4(_NUMBER, _ACTION, _FUNCTN);
            } else {
                FUNC2(_NUMBER);
                FUNC4(_NUMBER, _ACTION, _FUNCTN);
            }
            return false;
            break;
        case ACTION:
            if (record->event.pressed) {
                FUNC3(_ACTION);
                FUNC4(_NUMBER, _ACTION, _FUNCTN);
            } else {
                FUNC2(_ACTION);
                FUNC4(_NUMBER, _ACTION, _FUNCTN);
            }
            return false;
            break;
    }
    return true;
}