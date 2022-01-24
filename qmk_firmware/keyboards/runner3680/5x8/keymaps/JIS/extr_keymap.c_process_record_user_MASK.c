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
#define  ADJUST 130 
#define  QWERTY 129 
#define  RGBRST 128 
 int /*<<< orphan*/  RGB_current_config ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  rgblight_config ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
      case QWERTY:
        if (record->event.pressed) {
           FUNC3("mode just switched to qwerty and this is a huge string\n");
          FUNC5(_QWERTY);
        }
        break;

      case ADJUST:
        if (record->event.pressed) {
          FUNC2(_ADJUST);
        } else {
          FUNC1(_ADJUST);
        }
        break;

      case RGBRST:
        #ifdef RGBLIGHT_ENABLE
          if (record->event.pressed) {
            eeconfig_update_rgblight_default();
            rgblight_enable();
            RGB_current_config = rgblight_config;
          }
        #endif
        break;
  }
  return true;
}