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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  getch2_enabled ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_in ; 

__attribute__((used)) static void FUNC4(void)
{
    if (!getch2_enabled)
        return;

    // check if stdin is in the foreground process group
    int newstatus = (FUNC3(tty_in) == FUNC2());

    // and activate getch2 if it is, deactivate otherwise
    if (newstatus)
        FUNC0();
    else
        FUNC1();
}