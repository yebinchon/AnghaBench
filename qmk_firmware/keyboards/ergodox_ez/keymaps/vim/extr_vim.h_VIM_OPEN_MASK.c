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
 int /*<<< orphan*/  INSERT_MODE ; 
 int /*<<< orphan*/  KC_ENTER ; 
 int /*<<< orphan*/  KC_NO ; 
 int /*<<< orphan*/  KC_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void) {
  FUNC4("\e[31mo\e[0m");
  FUNC2(KC_NO);
  FUNC0(KC_RIGHT);
  FUNC1(KC_ENTER);
  FUNC3(INSERT_MODE);
}