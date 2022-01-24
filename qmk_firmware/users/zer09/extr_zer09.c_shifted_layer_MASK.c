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

/* Variables and functions */
 int /*<<< orphan*/  KC_LSFT ; 
 scalar_t__ _VL ; 
 scalar_t__ c_lyr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(void) {
  static bool is_shifted = false;

  if (c_lyr == _VL) {
    if (!is_shifted) {
      FUNC0(KC_LSFT);
      is_shifted = true;
      return true;
    }
  } else {
    if (is_shifted) {
      FUNC1(KC_LSFT);
      is_shifted = false;
      return true;
    }
  }

  return false;
}