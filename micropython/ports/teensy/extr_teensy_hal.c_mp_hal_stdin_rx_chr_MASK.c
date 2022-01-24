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
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  pyb_stdio_uart ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int*) ; 

int FUNC5(void) {
    for (;;) {
        byte c;
        if (FUNC4(&c) != 0) {
            return c;
        } else if (FUNC0(pyb_stdio_uart) != NULL && FUNC2(FUNC0(pyb_stdio_uart))) {
            return FUNC3(FUNC0(pyb_stdio_uart));
        }
        FUNC1();
    }
}