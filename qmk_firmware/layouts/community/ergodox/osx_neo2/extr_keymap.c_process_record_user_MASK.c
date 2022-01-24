#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_2 ; 
 int /*<<< orphan*/  KC_LOCKING_CAPS ; 
#define  KC_LSHIFT 131 
#define  KC_RSHIFT 130 
 int /*<<< orphan*/  KC_Y ; 
 int FUNC0 (int const) ; 
 int MOD_MASK_NONE ; 
 int MOD_MASK_SHIFT ; 
#define  NEO2_LMOD3 129 
#define  NEO2_RMOD3 128 
 int /*<<< orphan*/  NEO_3 ; 
 int USB_LED_CAPS_LOCK ; 
 int capslock_state ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int neo3_state ; 
 int /*<<< orphan*/  neo3_timer ; 
 int FUNC4 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case KC_LSHIFT:
      if (record->event.pressed) {
        capslock_state |= (FUNC0(KC_LSHIFT));
      } else {
        capslock_state &= ~(FUNC0(KC_LSHIFT));
      }
      break;
    case KC_RSHIFT:
      if (record->event.pressed) {
        capslock_state |= FUNC0(KC_RSHIFT);
      } else {
        capslock_state &= ~(FUNC0(KC_RSHIFT));
      }
      break;
    case NEO2_LMOD3:
      if (record->event.pressed) {
        FUNC3(NEO_3);
        neo3_state |= (1 << 1);
      } else {
        // Turn off NEO_3 layer unless it's enabled through NEO2_RMOD3 as well.
        if ((neo3_state & ~(1 << 1)) == 0) {
          FUNC2(NEO_3);
        }
        neo3_state &= ~(1 << 1);
      }
      break;
    case NEO2_RMOD3:
      if (record->event.pressed) {
        neo3_timer = FUNC8();
        neo3_state |= (1 << 2);
        FUNC3(NEO_3);
      } else {
        // Turn off NEO_3 layer unless it's enabled through NEO2_LMOD3 as well.
        if ((neo3_state & ~(1 << 2)) == 0) {
          FUNC2(NEO_3);
        }
        neo3_state &= ~(1 << 2);

        // Was the NEO2_RMOD3 key TAPPED?
        if (FUNC7(neo3_timer) <= 150) {
          if (neo3_state > 0) {
            // We are still in NEO_3 layer, send keycode and modifiers for @
            FUNC6(KC_2, MOD_MASK_SHIFT);
            return false;
          } else {
            // Do the normal key processing, send y
            FUNC6(KC_Y, MOD_MASK_NONE);
            return false;
          }
        }
      }
      break;
  }

  if ((capslock_state & MOD_MASK_SHIFT) == MOD_MASK_SHIFT) {
    // CAPSLOCK is currently active, disable it
    if (FUNC1() & (1 << USB_LED_CAPS_LOCK)) {
      FUNC9(KC_LOCKING_CAPS);
    } else {
      FUNC5(KC_LOCKING_CAPS);
    }
    return false;
  }

  return FUNC4(keycode, record);
}