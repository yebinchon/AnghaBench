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
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LGUI ; 
 scalar_t__ OS_MAC ; 
 scalar_t__ current_os ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(bool press) {
  if (press) {
    if (current_os == OS_MAC) {
      FUNC0(KC_LCTL);
    } else {
      FUNC0(KC_LGUI);
    }
  } else {
    if (current_os == OS_MAC) {
      FUNC1(KC_LCTL);
    } else {
      FUNC1(KC_LGUI);
    }
  }
}