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
#define  EXT_PLV 133 
#define  FUNC 132 
#define  LOWER 131 
#define  MOUSE 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PLOVER 129 
#define  RAISE 128 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _FUNC ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _MOUSE ; 
 int /*<<< orphan*/  _PLOVER ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plover_gb_song ; 
 int /*<<< orphan*/  plover_song ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case LOWER:
      if (record->event.pressed) {
        FUNC2(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC1(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC2(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC1(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case FUNC:
      if (record->event.pressed) {
        FUNC2(_FUNC);
      } else {
        FUNC1(_FUNC);
      }
      return false;
      break;
    case PLOVER:
      if (!record->event.pressed) {
        #ifdef AUDIO_ENABLE
          stop_all_notes();
          PLAY_SONG(plover_song);
        #endif
        FUNC2(_PLOVER);
      }
      return false;
      break;
    case EXT_PLV:
      if (record->event.pressed) {
        #ifdef AUDIO_ENABLE
          PLAY_SONG(plover_gb_song);
        #endif
        FUNC1(_PLOVER);
      }
      return false;
      break;
    case MOUSE:
      if (record->event.pressed) {
        FUNC2(_MOUSE);
      } else {
        FUNC1(_MOUSE);
      }
      return false;
      break;
  }
  return true;
}