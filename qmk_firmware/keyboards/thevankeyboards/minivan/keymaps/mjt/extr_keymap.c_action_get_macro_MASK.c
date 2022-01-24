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
 int /*<<< orphan*/  KC_POWER ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _FKEYS ; 
 int /*<<< orphan*/  _NUMSYM ; 
 int /*<<< orphan*/  _PLOVER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  tone_adjust ; 
 int /*<<< orphan*/  tone_plover ; 
 int /*<<< orphan*/  tone_qwerty ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC7(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 5: // MACSLEEP
            if (record->event.pressed) {
              FUNC4(KC_RSFT);
              FUNC4(KC_RCTL);
              FUNC4(KC_POWER);
              FUNC6(KC_POWER);
              FUNC6(KC_RCTL);
              FUNC6(KC_RSFT);
            }
        break;
        case 6: // PLOVER
              if (record->event.pressed) {
              #ifdef AUDIO_ENABLE
                stop_all_notes();
                PLAY_NOTE_ARRAY(tone_plover, false, 0);
              #endif
              FUNC2(_NUMSYM);
              FUNC2(_FKEYS);
              FUNC2(_ADJUST);
              FUNC3(_PLOVER);
            }
        break;
        case 7: // LAYERRESET
              if (record->event.pressed) {
              #ifdef AUDIO_ENABLE
                PLAY_NOTE_ARRAY(tone_qwerty, false, 0);
              #endif
              FUNC2(_NUMSYM);
              FUNC2(_FKEYS);
              FUNC2(_PLOVER);
              FUNC2(_ADJUST);
            }
        break;
        case 8: // BACKLIT
          if (record->event.pressed) {
            FUNC4(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
          } else {
            FUNC6(KC_RSFT);
          }
        break;
        case 9: // ADJUST
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              stop_all_notes();
              PLAY_NOTE_ARRAY(tone_adjust, false, 0);
            #endif
            FUNC2(_NUMSYM);
            FUNC2(_FKEYS);
            FUNC2(_PLOVER);
            FUNC3(_ADJUST);
          }
      }
    return MACRO_NONE;
}