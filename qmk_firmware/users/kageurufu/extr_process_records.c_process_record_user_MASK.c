#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  COLEMAK 130 
#define  QWERTY 129 
#define  RGBRST 128 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC4(_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if(record->event.pressed) {
        FUNC4(_COLEMAK);
      }
      return false;
      break;
    case RGBRST:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          eeconfig_update_rgblight_default();
          rgblight_enable();
        }
      #endif
      break;
  }


  return FUNC1(keycode, record) &&
#if defined(RGBLIGHT_ENABLE) || defined(RGB_MATRIX_ENABLE)
    process_record_rgb(keycode, record) &&
#endif // RGBLIGHT_ENABLE;
    true;
}