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
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_BEEP_HELP ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * bc ; 

INT FUNC5(LPTSTR param)
{
    if (FUNC4(param, FUNC3("/?"), 2) == 0)
    {
        FUNC0(TRUE, STRING_BEEP_HELP);
        return 0;
    }

#if 0
    /* check if run in batch mode */
    if (bc == NULL)
        return 1;
#endif

    FUNC1(FUNC2(StdOut));
    return 0;
}