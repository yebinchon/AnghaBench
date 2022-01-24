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
#define  BACKLIT 128 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case BACKLIT:
      if (record->event.pressed) {
        FUNC1(KC_RSFT);
        #ifdef BACKLIGHT_ENABLE
		  register_code(KC_LSFT);
          backlight_step();
        #endif
      } else {
        FUNC2(KC_RSFT);
		FUNC2(KC_LSFT);
      }
      return false;
      break;
  }
  return true;
}