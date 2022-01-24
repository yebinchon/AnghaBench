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
typedef  size_t INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 () ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MSG_STATISTICS_HELP ; 
 int /*<<< orphan*/  MSG_STATISTICS_SYNTAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

INT
FUNC7(
    INT argc,
    WCHAR **argv)
{
    INT i, result = 0;
    BOOL bServer = FALSE;
    BOOL bWorkstation = FALSE;

    for (i = 2; i < argc; i++)
    {
        if (FUNC6(argv[i], L"server") == 0)
        {
            if (bWorkstation == FALSE)
                bServer = TRUE;
            continue;
        }

        if (FUNC6(argv[i], L"workstation") == 0)
        {
            if (bServer == FALSE)
                bWorkstation = TRUE;
            continue;
        }

        if (FUNC6(argv[i], L"help") == 0)
        {
            /* Print short syntax help */
            FUNC4(4381);
            FUNC0(StdOut, L"\n");
            FUNC5(MSG_STATISTICS_SYNTAX);
            return 0;
        }

        if (FUNC6(argv[i], L"/help") == 0)
        {
            /* Print full help text*/
            FUNC4(4381);
            FUNC0(StdOut, L"\n");
            FUNC5(MSG_STATISTICS_SYNTAX);
            FUNC5(MSG_STATISTICS_HELP);
            return 0;
        }
    }

    if (bServer)
    {
        result = FUNC1();
    }
    else if (bWorkstation)
    {
        result = FUNC2();
    }
    else
    {
        FUNC4(4379);
        FUNC0(StdOut, L"\n");
        FUNC0(StdOut, L"   Server\n");
        FUNC0(StdOut, L"   Workstation\n");
        FUNC0(StdOut, L"\n");
    }

    if (result == 0)
        FUNC3(ERROR_SUCCESS);

    return result;
}