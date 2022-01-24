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
 int /*<<< orphan*/  _SC_CLK_TCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int system_hz ; 

void FUNC2(void) {
    long ticks;

    if ((ticks = FUNC1(_SC_CLK_TCK)) == -1) {
        FUNC0("Cannot get system clock ticks");
    }

    system_hz = (unsigned int) ticks;
}