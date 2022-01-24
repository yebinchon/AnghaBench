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
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STRING_EXIT_HELP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bExit ; 
 scalar_t__ bc ; 
 int /*<<< orphan*/  nErrorLevel ; 

INT FUNC8(LPTSTR param)
{
    if (!FUNC5(param, FUNC2("/?"), 2))
    {
        FUNC0(TRUE, STRING_EXIT_HELP);

        /* Just make sure we don't exit */
        bExit = FALSE;
        return 0;
    }

    if (FUNC6(param, FUNC2("/b"), 2) == 0)
    {
        param += 2;

        /*
         * If a current batch file is running, exit it,
         * otherwise exit this command interpreter instance.
         */
        if (bc)
            FUNC1();
        else
            bExit = TRUE;
    }
    else
    {
        /* Exit this command interpreter instance */
        bExit = TRUE;
    }

    /* Search for an optional exit code */
    while (FUNC4(*param))
        param++;

    /* Set the errorlevel to the exit code */
    if (FUNC3(*param))
        nErrorLevel = FUNC7(param);

    return 0;
}