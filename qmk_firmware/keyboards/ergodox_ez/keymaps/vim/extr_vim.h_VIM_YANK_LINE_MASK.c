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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_C ; 
 int /*<<< orphan*/  KC_LEFT ; 
 int /*<<< orphan*/  KC_LSHIFT ; 
 int /*<<< orphan*/  KC_NO ; 
 int /*<<< orphan*/  KC_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void) {
  FUNC4("\e[31mY\e[0m");
  FUNC3(KC_NO);
  FUNC0(KC_LEFT);
  FUNC1(KC_LSHIFT);
    FUNC0(KC_RIGHT);
  FUNC2(KC_LSHIFT);
  FUNC0(KC_C);
}