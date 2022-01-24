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
typedef  int WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UCHAR ;
typedef  int* PWSTR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (int*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,scalar_t__,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int*,scalar_t__*) ; 
 scalar_t__ FUNC9 (int*,scalar_t__*) ; 
 scalar_t__ FUNC10 (int*,scalar_t__*,scalar_t__*) ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int*,scalar_t__) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC13 (int*,char*) ; 
 scalar_t__ FUNC14 (int*,char*,int) ; 

int FUNC15(int argc, WCHAR **argv)
{
    PWSTR pszComputerName = NULL;
    PWSTR pszCommand = NULL;
    ULONG ulJobId = (ULONG)-1;
    ULONG ulJobHour = (ULONG)-1;
    ULONG ulJobMinute = (ULONG)-1;
    BOOL bDeleteJob = FALSE, bForceDelete = FALSE;
    BOOL bInteractiveJob = FALSE, bPeriodicJob = FALSE;
    BOOL bPrintUsage = FALSE;
    ULONG ulDaysOfMonth = 0;
    UCHAR ucDaysOfWeek = 0;
    INT nResult = 0;
    INT i, minIdx;

    /* Initialize the Console Standard Streams */
    FUNC1();

    if (!FUNC6())
        return 1;

    /* Parse the computer name */
    i = 1;
    minIdx = 1;
    if (i < argc &&
        argv[i][0] == L'\\' &&
        argv[i][1] == L'\\')
    {
        pszComputerName = argv[i];
        i++;
        minIdx++;
    }

    /* Parse the time or job id */
    if (i < argc && argv[i][0] != L'/')
    {
        if (FUNC10(argv[i], &ulJobHour, &ulJobMinute))
        {
            i++;
            minIdx++;
        }
        else if (FUNC9(argv[i], &ulJobId))
        {
            i++;
            minIdx++;
        }
    }

    /* Parse the options */
    for (; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            if (FUNC13(argv[i], L"/?") == 0)
            {
                bPrintUsage = TRUE;
                goto done;
            }
            else if (FUNC13(argv[i], L"/delete") == 0)
            {
                bDeleteJob = TRUE;
            }
            else if (FUNC13(argv[i], L"/yes") == 0)
            {
                bForceDelete = TRUE;
            }
            else if (FUNC13(argv[i], L"/interactive") == 0)
            {
                bInteractiveJob = TRUE;
            }
            else if (FUNC14(argv[i], L"/every:", 7) == 0)
            {
                bPeriodicJob = TRUE;
                if (FUNC7(&(argv[i][7]), &ulDaysOfMonth) == FALSE)
                {
                    if (FUNC8(&(argv[i][7]), &ucDaysOfWeek) == FALSE)
                    {
                        ulDaysOfMonth = FUNC5();
                    }
                }
            }
            else if (FUNC14(argv[i], L"/next:", 6) == 0)
            {
                bPeriodicJob = FALSE;
                if (FUNC7(&(argv[i][6]), &ulDaysOfMonth) == FALSE)
                {
                    if (FUNC8(&(argv[i][6]), &ucDaysOfWeek) == FALSE)
                    {
                        ulDaysOfMonth = FUNC5();
                    }
                }
            }
            else
            {
                bPrintUsage = TRUE;
                nResult = 1;
                goto done;
            }
        }
    }

    /* Parse the command */
    if (argc > minIdx && argv[argc - 1][0] != L'/')
    {
        pszCommand = argv[argc - 1];
    }

    if (bDeleteJob == TRUE)
    {
        /* Check for invalid options or arguments */
        if (bInteractiveJob == TRUE ||
            ulJobHour != (ULONG)-1 ||
            ulJobMinute != (ULONG)-1 ||
            ulDaysOfMonth != 0 ||
            ucDaysOfWeek != 0 ||
            pszCommand != NULL)
        {
            bPrintUsage = TRUE;
            nResult = 1;
            goto done;
        }

        nResult = FUNC3(pszComputerName,
                            ulJobId,
                            bForceDelete);
    }
    else
    {
        if (ulJobHour != (ULONG)-1 && ulJobMinute != (ULONG)-1)
        {
            /* Check for invalid options or arguments */
            if (bForceDelete == TRUE ||
                pszCommand == NULL)
            {
                bPrintUsage = TRUE;
                nResult = 1;
                goto done;
            }

            nResult = FUNC0(pszComputerName,
                             ulJobHour,
                             ulJobMinute,
                             ulDaysOfMonth,
                             ucDaysOfWeek,
                             bInteractiveJob,
                             bPeriodicJob,
                             pszCommand);
        }
        else
        {
            /* Check for invalid options or arguments */
            if (bForceDelete == TRUE ||
                bInteractiveJob == TRUE ||
                ulDaysOfMonth != 0 ||
                ucDaysOfWeek != 0 ||
                pszCommand != NULL)
            {
                bPrintUsage = TRUE;
                nResult = 1;
                goto done;
            }

            if (ulJobId == (ULONG)-1)
            {
                nResult = FUNC11(pszComputerName);
            }
            else
            {
                nResult = FUNC12(pszComputerName,
                                          ulJobId);
            }
        }
    }

done:
    FUNC4();

    if (bPrintUsage == TRUE)
        FUNC2(StdOut, IDS_USAGE);

    return nResult;
}