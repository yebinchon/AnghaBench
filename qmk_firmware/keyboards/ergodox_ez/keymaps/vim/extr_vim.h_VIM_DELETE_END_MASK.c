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
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_NO ; 
 int /*<<< orphan*/  KC_RIGHT ; 
 int /*<<< orphan*/  KC_X ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void) {
  FUNC5("\e[31me\e[0m");
  FUNC4(KC_NO);
  FUNC1(KC_LALT);
    FUNC3(KC_RIGHT); // select to end of this word
  FUNC2(KC_LALT);
  FUNC0(KC_X);
}