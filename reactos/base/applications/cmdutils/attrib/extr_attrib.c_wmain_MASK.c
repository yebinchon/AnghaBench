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
typedef  char* LPWSTR ;
typedef  int INT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_ARCHIVE ; 
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FILE_ATTRIBUTE_SYSTEM ; 
 int FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int*,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_ATTRIB_HELP ; 
 int /*<<< orphan*/  STRING_ERROR_INVALID_PARAM_FORMAT ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 int UNICODE_NULL ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,char*) ; 
 scalar_t__ FUNC10 (int*,char*) ; 
 int FUNC11 (int*) ; 
 char* FUNC12 (int*,int) ; 

int FUNC13(int argc, WCHAR *argv[])
{
    INT    i;
    WCHAR  szPath[MAX_PATH];
    WCHAR  szFileName [MAX_PATH];
    BOOL   bRecurse = FALSE;
    BOOL   bDirectories = FALSE;
    DWORD  dwAttrib = 0;
    DWORD  dwMask = 0;

    /* Initialize the Console Standard Streams */
    FUNC1();

    /* Print help */
    if (argc > 1 && FUNC8(argv[1], L"/?") == 0)
    {
        FUNC3(StdOut, STRING_ATTRIB_HELP);
        return 0;
    }

    /* check for options */
    for (i = 1; i < argc; i++)
    {
        if (FUNC10(argv[i], L"/s") == 0)
            bRecurse = TRUE;
        else if (FUNC10(argv[i], L"/d") == 0)
            bDirectories = TRUE;
    }

    /* create attributes and mask */
    for (i = 1; i < argc; i++)
    {
        if (*argv[i] == L'+')
        {
            if (FUNC11(argv[i]) != 2)
            {
                FUNC2(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                return -1;
            }

            switch (FUNC7(argv[i][1]))
            {
                case L'A':
                    dwMask   |= FILE_ATTRIBUTE_ARCHIVE;
                    dwAttrib |= FILE_ATTRIBUTE_ARCHIVE;
                    break;

                case L'H':
                    dwMask   |= FILE_ATTRIBUTE_HIDDEN;
                    dwAttrib |= FILE_ATTRIBUTE_HIDDEN;
                    break;

                case L'R':
                    dwMask   |= FILE_ATTRIBUTE_READONLY;
                    dwAttrib |= FILE_ATTRIBUTE_READONLY;
                    break;

                case L'S':
                    dwMask   |= FILE_ATTRIBUTE_SYSTEM;
                    dwAttrib |= FILE_ATTRIBUTE_SYSTEM;
                    break;

                default:
                    FUNC2(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                    return -1;
            }
        }
        else if (*argv[i] == L'-')
        {
            if (FUNC11(argv[i]) != 2)
            {
                FUNC2(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                return -1;
            }

            switch (FUNC7(argv[i][1]))
            {
                case L'A':
                    dwMask   |= FILE_ATTRIBUTE_ARCHIVE;
                    dwAttrib &= ~FILE_ATTRIBUTE_ARCHIVE;
                    break;

                case L'H':
                    dwMask   |= FILE_ATTRIBUTE_HIDDEN;
                    dwAttrib &= ~FILE_ATTRIBUTE_HIDDEN;
                    break;

                case L'R':
                    dwMask   |= FILE_ATTRIBUTE_READONLY;
                    dwAttrib &= ~FILE_ATTRIBUTE_READONLY;
                    break;

                case L'S':
                    dwMask   |= FILE_ATTRIBUTE_SYSTEM;
                    dwAttrib &= ~FILE_ATTRIBUTE_SYSTEM;
                    break;

                default:
                    FUNC2(StdErr, STRING_ERROR_INVALID_PARAM_FORMAT, argv[i]);
                    return -1;
            }
        }
    }

    if (argc == 1)
    {
        DWORD len;

        len = FUNC4(MAX_PATH, szPath);
        if (szPath[len-1] != L'\\')
        {
            szPath[len] = L'\\';
            szPath[len + 1] = UNICODE_NULL;
        }
        FUNC9(szFileName, L"*.*");
        FUNC6(szPath, szFileName, bRecurse);
        return 0;
    }

    /* get full file name */
    for (i = 1; i < argc; i++)
    {
        if ((*argv[i] != L'+') && (*argv[i] != L'-') && (*argv[i] != L'/'))
        {
            LPWSTR p;

            FUNC5(argv[i], MAX_PATH, szPath, NULL);
            p = FUNC12(szPath, L'\\') + 1;
            FUNC9(szFileName, p);
            *p = L'\0';

            if (dwMask == 0)
                FUNC6(szPath, szFileName, bRecurse);
            else
                FUNC0(szPath, szFileName, dwMask,
                         dwAttrib, bRecurse, bDirectories);
        }
    }

    return 0;
}