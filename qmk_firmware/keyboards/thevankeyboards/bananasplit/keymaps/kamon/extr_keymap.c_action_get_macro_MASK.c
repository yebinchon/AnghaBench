#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  LALT ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

const macro_t *FUNC6(keyrecord_t *record, uint8_t id, uint8_t opt) {
  switch(id) {
      case 0:
        // Sends Alt+Shift on both key down and key up.
        // Fesigned to switch between two keyboard layouts on Windows using a locking switch.
        // Does nothing if right shift is pressed for easier resync.
        if (!(FUNC5() & FUNC2(KC_RSFT)))
          return FUNC1(FUNC0(LALT), FUNC3(LSFT), FUNC4(LALT), END);
        else
          return MACRO_NONE;
  }
  return MACRO_NONE;
}