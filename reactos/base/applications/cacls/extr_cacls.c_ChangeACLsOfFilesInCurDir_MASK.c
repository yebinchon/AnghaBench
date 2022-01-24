#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwFileAttributes; int /*<<< orphan*/ * cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OptionC ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC11(LPCTSTR pszFiles)
{
    HANDLE hFind;
    WIN32_FIND_DATA FindData;
    TCHAR szCurDir[MAX_PATH];
    DWORD LastError;

    /*
     * get the file path (current directory)
     */
    FUNC5(MAX_PATH, szCurDir);
    FUNC0(szCurDir);

    /*
     * search for files in current directory
     */
    hFind = FUNC3(pszFiles, &FindData);
    if (hFind == INVALID_HANDLE_VALUE)
        return FALSE;

    do
    {
        if (FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        if (!FUNC1(szCurDir, FindData.cFileName))
        {
            LastError = FUNC6();
            if (LastError == ERROR_ACCESS_DENIED)
            {
                FUNC7(LastError);
                if (!OptionC)
                {
                    FUNC2(hFind);
                    return FALSE;
                }
            }
            else
                break;
        }
    } while(FUNC4(hFind, &FindData));

    LastError = FUNC6();
    FUNC2(hFind);

    if (LastError != ERROR_NO_MORE_FILES)
    {
        FUNC7(LastError);
        return FALSE;
    }

    /*
     * search for subdirectory in current directory
     */
    hFind = FUNC3(FUNC9("*"), &FindData);
    if (hFind == INVALID_HANDLE_VALUE)
        return FALSE;
    do
    {
        if (FUNC10(FindData.cFileName, FUNC9(".")) == 0 ||
            FUNC10(FindData.cFileName, FUNC9("..")) == 0)
            continue;

        if (FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
        {
            FUNC5(MAX_PATH, szCurDir);
            if (FUNC8(FindData.cFileName))
            {
                FUNC11(pszFiles);
                FUNC8(szCurDir);
            }
            else
            {
                LastError = FUNC6();
                if (LastError == ERROR_ACCESS_DENIED)
                {
                    FUNC7(LastError);
                    if (!OptionC)
                    {
                        FUNC2(hFind);
                        return FALSE;
                    }
                }
                else
                    break;
            }
        }
    } while(FUNC4(hFind, &FindData));
    LastError = FUNC6();
    FUNC2(hFind);

    if (LastError != ERROR_NO_MORE_FILES)
    {
        FUNC7(LastError);
        return FALSE;
    }
    return TRUE;
}