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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  STRING_CHCP_ERROR1 ; 
 int /*<<< orphan*/  STRING_CHCP_ERROR4 ; 
 int /*<<< orphan*/  STRING_CHCP_HELP ; 
 int /*<<< orphan*/  STRING_ERROR_INVALID_PARAM_FORMAT ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

int FUNC9(int argc, WCHAR* argv[])
{
    UINT uOldCodePage, uNewCodePage;

    /* Initialize the Console Standard Streams */
    FUNC0();

    /* Print help */
    if (argc > 1 && FUNC8(argv[1], L"/?") == 0)
    {
        FUNC2(StdOut, STRING_CHCP_HELP);
        return 0;
    }

    if (argc == 1)
    {
        /* Display the active code page number */
        FUNC1(StdOut, STRING_CHCP_ERROR1, FUNC4());
        return 0;
    }

    if (argc > 2)
    {
        /* Too many parameters */
        FUNC1(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[2]);
        return 1;
    }

    uNewCodePage = (UINT)FUNC7(argv[1]);

    if (uNewCodePage == 0)
    {
        FUNC1(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[1]);
        return 1;
    }

    /*
     * Save the original console codepage to be restored in case
     * SetConsoleCP() or SetConsoleOutputCP() fails.
     */
    uOldCodePage = FUNC3();

    /*
     * Try changing the console input codepage. If it works then also change
     * the console output codepage, and refresh our local codepage cache.
     */
    if (FUNC5(uNewCodePage))
    {
        if (FUNC6(uNewCodePage))
        {
            /* Display the active code page number */
            FUNC1(StdOut, STRING_CHCP_ERROR1, FUNC4());
            return 0;
        }
        else
        {
            /* Failure, restore the original console codepage */
            FUNC5(uOldCodePage);
        }
    }

    /* An error happened, display an error and bail out */
    FUNC2(StdErr, STRING_CHCP_ERROR4);
    return 1;
}