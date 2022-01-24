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
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_0 ; 
 int /*<<< orphan*/  KC_9 ; 
 int /*<<< orphan*/  KC_COMM ; 
 int /*<<< orphan*/  KC_DOT ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LPLT 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  NEQL 131 
#define  RGBRST 130 
#define  RGB_MOD 129 
#define  RPGT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_2__*) ; 
 int FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    FUNC4(keycode, record);
  }

  switch (keycode) {
  case NEQL: // !=
    if (record->event.pressed) {
      FUNC1("!=");
    }
    return false;
  case LPLT: // ( or < with shift
    if (record->event.pressed) {
      if (FUNC3() & (FUNC0(KC_LSFT) | FUNC0(KC_RSFT))) {
        // <
        FUNC10(KC_COMM); // shift is already registered
      } else {
        // (
        FUNC6(FUNC0(KC_LSFT));
        FUNC10(KC_9);
        FUNC11(FUNC0(KC_LSFT));
      }
    }
    return false;
  case RPGT: // ) or > with shift
    if (record->event.pressed) {
      if (FUNC3() & (FUNC0(KC_LSFT) | FUNC0(KC_RSFT))) {
        // <
        FUNC10(KC_DOT); // shift is already registered
      } else {
        // )
        FUNC6(FUNC0(KC_LSFT));
        FUNC10(KC_0);
        FUNC11(FUNC0(KC_LSFT));
      }
    }
    return false;
#ifdef RGBLIGHT_ENABLE
  case RGB_MOD:
      if (record->event.pressed) {
        rgblight_step();
        rgb_mod_changed_keymap();
      }
    return false;
  case RGBRST:
      if (record->event.pressed) {
        eeconfig_update_rgblight_default();
        rgblight_enable();
        rgb_mod_changed_keymap();
      }
    return false;
#endif
  }
  return FUNC5(keycode, record);
}