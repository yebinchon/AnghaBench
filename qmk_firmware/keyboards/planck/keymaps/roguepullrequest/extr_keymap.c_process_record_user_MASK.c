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
#define  ALT_TAB 129 
 int /*<<< orphan*/  KC_LALT ; 
#define  KC_LAST 128 
 int /*<<< orphan*/  KC_LCTRL ; 
 int /*<<< orphan*/  KC_TAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* alt_tab_timer ; 
 int is_alt_tab_active ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record) {
  static uint16_t macro_timer;

  switch (keycode) {
    case ALT_TAB:
      if (record->event.pressed) {
        if (!is_alt_tab_active) {
          is_alt_tab_active = true;
          FUNC2(KC_LALT);
        }
        alt_tab_timer = FUNC5();
        FUNC2(KC_TAB);
      } else {
        FUNC6(KC_TAB);
      }
      break;
  }

  switch (keycode){
    case KC_LAST:
      if(record->event.pressed){
        macro_timer = FUNC5();
        FUNC3(FUNC0(KC_LCTRL));
      } else {
        FUNC7(FUNC0(KC_LCTRL));
        if (FUNC4(macro_timer) < 150) {
          FUNC1("!$");
        }
      }
    return false;
  }
  return true;
}