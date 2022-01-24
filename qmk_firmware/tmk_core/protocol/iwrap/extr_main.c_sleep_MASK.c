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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLEEP_MODE_PWR_DOWN ; 
 int /*<<< orphan*/  WD_IRQ ; 
 int /*<<< orphan*/  WD_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(uint8_t term) {
    FUNC0(WD_IRQ, term);

    FUNC1();
    FUNC3(SLEEP_MODE_PWR_DOWN);
    FUNC7();
    FUNC4();
    FUNC2();
    FUNC5();
    FUNC6();

    FUNC0(WD_OFF);
}