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
 int /*<<< orphan*/  KC_QUOT ; 
 int /*<<< orphan*/  KC_RGUI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  RG_QUOT 128 
 int /*<<< orphan*/  TAPPING_TERM ; 
 int /*<<< orphan*/  _NUMBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_key_timer ; 

bool FUNC11(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case RG_QUOT:
      if (record->event.pressed) {
        user_key_timer = FUNC8();
        FUNC2(_NUMBER);
        FUNC6(FUNC0(KC_RGUI));
      } else {
        FUNC10(FUNC0(KC_RGUI));
        FUNC1(_NUMBER);
	if (FUNC7(user_key_timer) < TAPPING_TERM) {
          FUNC5(KC_QUOT);
	  FUNC9(KC_QUOT);
	}
      }
      return false; break;
  }
  return FUNC3(keycode, record) &&
    FUNC4(keycode, record);
}