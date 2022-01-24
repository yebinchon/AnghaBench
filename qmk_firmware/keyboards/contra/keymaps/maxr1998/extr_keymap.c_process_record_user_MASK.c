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
 int /*<<< orphan*/  DE_SS ; 
#define  KC_BSPC 130 
 int /*<<< orphan*/  KC_LSFT ; 
#define  KC_N3 129 
#define  KC_NR 128 
 int /*<<< orphan*/  KC_RSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _NR ; 
 int /*<<< orphan*/  _NR_L3 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

bool FUNC7(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case KC_BSPC:
      if (record->event.pressed) {
        if (FUNC1() & (FUNC0(KC_LSFT) | FUNC0(KC_RSFT))) {
          FUNC4(DE_SS);
          return false;
        }
      } else {
        FUNC5(DE_SS);
      }
      return true;
    case KC_NR:
      if (record->event.pressed) {
        FUNC3(_NR);
      } else {
        FUNC2(_NR);
      }
      FUNC6();
      return false;
    case KC_N3:
      if (record->event.pressed) {
        FUNC3(_NR_L3);
      } else {
        FUNC2(_NR_L3);
      }
      FUNC6();
      return false;
    default:
      return true;
  }
}