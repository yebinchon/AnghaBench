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
#define  DYN_REC_START1 136 
#define  DYN_REC_START2 135 
#define  DYN_REC_STOP 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LOWER 133 
#define  MEDIA 132 
#define  NUMPAD 131 
#define  ONESHOT 130 
 int /*<<< orphan*/  ONESHOT_PRESSED ; 
 int /*<<< orphan*/  ONESHOT_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _FUNCTN ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _MEDIA ; 
 int /*<<< orphan*/  _NUMPAD ; 
 int /*<<< orphan*/  _ONESHOT ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tone_dyn_macro_rec ; 
 int /*<<< orphan*/  tone_dyn_macro_stop ; 
 int /*<<< orphan*/  tone_numpad ; 
 int /*<<< orphan*/  tone_oneshot ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record) {
    // uint16_t macro_kc = (keycode == ONESHOT ? DYN_REC_STOP : keycode);
    if (!FUNC5(keycode, record)) {
        switch(keycode) {
          case DYN_REC_START1:
          case DYN_REC_START2:
#ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dyn_macro_rec);
#endif
              break;
          case DYN_REC_STOP:
#ifdef AUDIO_ENABLE
              PLAY_SONG(tone_dyn_macro_stop);
#endif
              break;
        }
        return false;
    }
    switch (keycode) {
        case ONESHOT:
            if (record->event.pressed) {
                FUNC4(_ONESHOT);
                FUNC6(_ONESHOT, ONESHOT_START);
                FUNC2(ONESHOT_PRESSED);
#ifdef AUDIO_ENABLE
                PLAY_SONG(tone_oneshot);
#endif
            }
            return false;
            break;
        case QWERTY:
            if (record->event.pressed) {
                if (FUNC0(_NUMPAD)) {
#ifdef AUDIO_ENABLE
                    PLAY_SONG(tone_qwerty);
#endif
                    FUNC3(_NUMPAD);
                }
            }
            return false;
            break;
        case NUMPAD:
            if (record->event.pressed) {
                if (!FUNC0(_NUMPAD)) {
#ifdef AUDIO_ENABLE
                    PLAY_SONG(tone_numpad);
#endif
                    FUNC4(_NUMPAD);
                }
            }
            return false;
            break;
        case RAISE:
            if (record->event.pressed) {
                FUNC4(_RAISE);
                FUNC7(_RAISE, _LOWER, _FUNCTN);
            } else {
                FUNC3(_RAISE);
                FUNC7(_RAISE, _LOWER, _FUNCTN);
            }
            return false;
            break;
        case LOWER:
            if (record->event.pressed) {
                FUNC4(_LOWER);
                FUNC7(_RAISE, _LOWER, _FUNCTN);
            } else {
                FUNC3(_LOWER);
                FUNC7(_RAISE, _LOWER, _FUNCTN);
            }
            return false;
            break;
        case MEDIA:
            if (record->event.pressed) {
                FUNC4(_MEDIA);
            } else {
                FUNC3(_MEDIA);
            }
            return false;
            break;
    }
    return true;
}