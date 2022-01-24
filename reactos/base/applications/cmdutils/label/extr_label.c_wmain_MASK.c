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
typedef  int INT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC7 (int,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int* FUNC12 (int /*<<< orphan*/ ) ; 
 int MAX_DRIVE_LENGTH ; 
 int MAX_LABEL_LENGTH ; 
 int MAX_PATH ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  STRING_ERROR_INVALID_DRIVE ; 
 int /*<<< orphan*/  STRING_ERROR_INVALID_LABEL ; 
 int /*<<< orphan*/  STRING_LABEL_HELP ; 
 int /*<<< orphan*/  STRING_LABEL_TEXT1 ; 
 int /*<<< orphan*/  STRING_LABEL_TEXT2 ; 
 int /*<<< orphan*/  STRING_LABEL_TEXT3 ; 
 int /*<<< orphan*/  STRING_LABEL_TEXT4 ; 
 int /*<<< orphan*/  FUNC14 (int*,int*) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int UNICODE_NULL ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int*,...) ; 
 scalar_t__ FUNC17 (int*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int*,int*) ; 
 scalar_t__ FUNC19 (int*) ; 

int FUNC20(int argc, WCHAR *argv[])
{
    WCHAR szRootPath[] = L" :\\";
    WCHAR szBuffer[80];
    WCHAR szLabel[80];
    WCHAR szOldLabel[80];
    DWORD dwSerialNr;
    INT len, i;

    /* Initialize the Console Standard Streams */
    FUNC3();

    /* set empty label string */
    szLabel[0] = UNICODE_NULL;

    /* print help */
    if (argc > 1 && FUNC17(argv[1], L"/?") == 0)
    {
        FUNC6(StdOut, STRING_LABEL_HELP);
        return 0;
    }

    if (argc > 1)
    {
        len = 0;
        for (i = 1; i < argc; i++)
        {
            if (i > 1)
                len++;
            len += FUNC19(argv[i]);
        }

        if (len > MAX_LABEL_LENGTH + MAX_DRIVE_LENGTH)
        {
            FUNC6(StdOut, STRING_ERROR_INVALID_LABEL);
            return 1;
        }

        for (i = 1; i < argc; i++)
        {
            if (i > 1)
                FUNC16(szBuffer, L" ");
            FUNC16(szBuffer, argv[i]);
        }
    }

    if (FUNC19(szBuffer) > 0)
    {
        if (szBuffer[1] == L':')
        {
            szRootPath[0] = FUNC15(szBuffer[0]);
            FUNC18(szLabel, &szBuffer[2]);
        }
        else
        {
            FUNC18(szLabel, szBuffer);
        }
    }

    if (FUNC19(szLabel) > MAX_LABEL_LENGTH)
    {
        FUNC6(StdOut, STRING_ERROR_INVALID_LABEL);
        return 1;
    }

    if (szRootPath[0] == L' ')
    {
        /* get label of current drive */
        WCHAR szCurPath[MAX_PATH];
        FUNC7(MAX_PATH, szCurPath);
        szRootPath[0] = szCurPath[0];
    }

    /* check root path */
    if (!FUNC11(szRootPath))
    {
        FUNC6(StdErr, STRING_ERROR_INVALID_DRIVE);
        return 1;
    }

    if (FUNC19(szLabel) == 0)
    {
        FUNC9(szRootPath, szOldLabel, FUNC0(szOldLabel), &dwSerialNr,
                              NULL, NULL, NULL, 0);

        /* print drive info */
        if (szOldLabel[0] != UNICODE_NULL)
        {
            FUNC5(StdOut, STRING_LABEL_TEXT1, FUNC15(szRootPath[0]), szOldLabel);
        }
        else
        {
            FUNC5(StdOut, STRING_LABEL_TEXT2, FUNC15(szRootPath[0]));
        }

        /* print the volume serial number */
        FUNC5(StdOut, STRING_LABEL_TEXT3, FUNC10(dwSerialNr), FUNC12(dwSerialNr));

        FUNC6(StdOut, STRING_LABEL_TEXT4);

        FUNC2(szLabel, FUNC0(szLabel));
        FUNC4(StdOut, L"\n");

        if (FUNC19(szLabel) == 0)
        {
            if (FUNC13() == FALSE)
                return 0;
        }
    }

    if (!FUNC14(szRootPath, szLabel))
    {
        FUNC1(StdOut, FUNC8());
        return 1;
    }

    return 0;
}