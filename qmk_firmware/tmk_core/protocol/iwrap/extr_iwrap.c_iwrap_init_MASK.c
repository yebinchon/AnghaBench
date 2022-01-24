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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void) {
    // reset iWRAP if in already MUX mode after AVR software-reset
    FUNC3("RESET");
    FUNC2("RESET");
    FUNC0(3000);
    FUNC3("\r\nSET CONTROL MUX 1\r\n");
    FUNC0(500);
    FUNC1();
}