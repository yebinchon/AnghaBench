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
typedef  int SIZE_T ;
typedef  int* PWSTR ;
typedef  int* PCWSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* FUNC5 (int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  IDS_ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int FUNC9 (int*) ; 
 int FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int,int*) ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ FUNC17 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int*,char*) ; 

int FUNC21(int argc, WCHAR* argv[])
{
    int ret = 0;
    int arg;
    SIZE_T ArgStrSize;
    PCWSTR ArgStr, argStr;

    INT nPortNum;

    /* Initialize the Console Standard Streams */
    FUNC0();

    /*
     * MODE.COM has a very peculiar way of parsing its arguments,
     * as they can be even not separated by any space. This extreme
     * behaviour certainly is present for backwards compatibility
     * with the oldest versions of the utility present on MS-DOS.
     *
     * For example, such a command:
     *   "MODE.COM COM1baud=9600parity=ndata=8stop=1xon=onto=on"
     * will be correctly understood as:
     *   "MODE.COM COM1 baud=9600 parity=n data=8 stop=1 xon=on to=on"
     *
     * Note also that the "/STATUS" switch is actually really "/STA".
     *
     * However we will not use GetCommandLine() because we do not want
     * to deal with the prepended application path and try to find
     * where the arguments start. Our approach here will consist in
     * flattening the arguments vector.
     */
    ArgStrSize = 0;

    /* Compute the space needed for the new string, and allocate it */
    for (arg = 1; arg < argc; arg++)
    {
        ArgStrSize += FUNC19(argv[arg]) + 1; // 1 for space
    }
    ArgStr = FUNC7(FUNC6(), 0, (ArgStrSize + 1) * sizeof(WCHAR));
    if (ArgStr == NULL)
    {
        FUNC1(StdErr, L"ERROR: Not enough memory\n");
        return 1;
    }

    /* Copy the contents and NULL-terminate the string */
    argStr = ArgStr;
    for (arg = 1; arg < argc; arg++)
    {
        FUNC18((PWSTR)argStr, argv[arg]);
        argStr += FUNC19(argv[arg]);
        *(PWSTR)argStr++ = L' ';
    }
    *(PWSTR)argStr = L'\0';

    /* Parse the command line */
    argStr = ArgStr;

    while (*argStr == L' ') argStr++;
    if (!*argStr) goto show_status;

    if (FUNC20(argStr, L"/?") || FUNC20(argStr, L"-?"))
    {
        FUNC3(StdOut, IDS_USAGE);
        goto Quit;
    }
    else if (FUNC17(argStr, L"/STA", 4) == 0)
    {
        /* Skip this parameter */
        while (*argStr != L' ') argStr++;
        /* Skip any delimiter */
        while (*argStr == L' ') argStr++;

        /* The presence of any other parameter is invalid */
        if (*argStr)
            goto invalid_parameter;

        goto show_status;
    }
    else if (FUNC17(argStr, L"LPT", 3) == 0)
    {
        argStr = FUNC5(argStr+3, &nPortNum);
        if (!argStr || nPortNum == -1)
            goto invalid_parameter;

        if (*argStr == L':') argStr++;
        while (*argStr == L' ') argStr++;

        if (!*argStr || FUNC17(argStr, L"/STA", 4) == 0)
            ret = FUNC15(nPortNum);
        else
            FUNC1(StdErr, L"ERROR: LPT port redirection is not implemented!\n");
        // TODO: Implement setting LPT port redirection using SetParallelState().
        goto Quit;
    }
    else if (FUNC17(argStr, L"COM", 3) == 0)
    {
        argStr = FUNC5(argStr+3, &nPortNum);
        if (!argStr || nPortNum == -1)
            goto invalid_parameter;

        if (*argStr == L':') argStr++;
        while (*argStr == L' ') argStr++;

        if (!*argStr || FUNC17(argStr, L"/STA", 4) == 0)
            ret = FUNC16(nPortNum);
        else
            ret = FUNC12(nPortNum, argStr);
        goto Quit;
    }
    else if (FUNC17(argStr, L"CON", 3) == 0)
    {
        argStr += 3;

        if (*argStr == L':') argStr++;
        while (*argStr == L' ') argStr++;

        if (!*argStr || FUNC17(argStr, L"/STA", 4) == 0)
        {
            ret = FUNC14();
        }
        else if ( (FUNC17(argStr, L"CP", 2) == 0 && (argStr += 2)) ||
                  (FUNC17(argStr, L"CODEPAGE", 8) == 0 && (argStr += 8)) )
        {
            while (*argStr == L' ') argStr++;

            if (!*argStr || FUNC17(argStr, L"/STA", 4) == 0)
                ret = FUNC13();
            else
                ret = FUNC9(argStr);
        }
        else
        {
            ret = FUNC10(argStr);
        }
        goto Quit;
    }
    // else if (wcschr(argStr, L','))
    else
    {
        /* Old syntax: MODE [COLS],[LINES] */
        ret = FUNC11(argStr);
        goto Quit;
    }

show_status:
    FUNC4();
    goto Quit;

invalid_parameter:
    FUNC2(StdErr, IDS_ERROR_INVALID_PARAMETER, ArgStr);
    goto Quit;

Quit:
    /* Free the string and quit */
    FUNC8(FUNC6(), 0, (PWSTR)ArgStr);
    return ret;
}