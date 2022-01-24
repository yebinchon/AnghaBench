#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
#define  EXT_PLV 132 
#define  LOWER 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 130 
#define  QWERTY 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _PLOVER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__ keymap_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plover_gb_song ; 
 int /*<<< orphan*/  plover_song ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC7("mode just switched to qwerty and this is a huge string\n");
        FUNC8(_QWERTY);
      }
      return false; break;
    case LOWER:
      if (record->event.pressed) {
        FUNC6(_LOWER);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC5(_LOWER);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      }
      return false; break;
    case RAISE:
      if (record->event.pressed) {
        FUNC6(_RAISE);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC5(_RAISE);
        FUNC10(_LOWER, _RAISE, _ADJUST);
      }
      return false; break;
    case PLOVER:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          stop_all_notes();
          PLAY_SONG(plover_song);
        #endif
        FUNC5(_RAISE);
        FUNC5(_LOWER);
        FUNC5(_ADJUST);
        FUNC6(_PLOVER);
        if (!FUNC2()) {
            FUNC1();
        }
        keymap_config.raw = FUNC3();
        keymap_config.nkro = 1;
        FUNC4(keymap_config.raw);
      }
      return false; break;
    case EXT_PLV:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(plover_gb_song);
        #endif
        FUNC5(_PLOVER);
      }
      return false; break;
  }
  return true;
}