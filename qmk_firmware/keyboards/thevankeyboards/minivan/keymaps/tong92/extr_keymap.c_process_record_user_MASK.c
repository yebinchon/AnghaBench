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
#define  BACKLIT 132 
#define  EXT_MOUSE 131 
#define  MAC 130 
#define  MOUSE 129 
#define  WINDOW 128 
 int /*<<< orphan*/  _MAC ; 
 int /*<<< orphan*/  _MAC_SHORTCUT ; 
 int /*<<< orphan*/  _MOUSE ; 
 int /*<<< orphan*/  _WINDOW ; 
 int /*<<< orphan*/  _WINDOW_SHORTCUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case WINDOW:
      if (record->event.pressed) {
        FUNC3(_WINDOW);
      }
      return false;
      break;
    case MAC:
      if (record->event.pressed) {
        FUNC3(_MAC);
      }
      return false;
      break;
    case BACKLIT:
      if (record->event.pressed) {
        #ifdef BACKLIGHT_ENABLE
          backlight_step();
        #endif
      }
      return false;
      break;
    case MOUSE:
      if (record->event.pressed) {
        FUNC2(_MOUSE);
      }
      return false;
      break;
    case EXT_MOUSE:
      if (record->event.pressed) {
        FUNC1(_MOUSE);
        FUNC1(_WINDOW_SHORTCUT);
        FUNC1(_MAC_SHORTCUT);
      }
      return false;
      break;
  }
  return true;
}