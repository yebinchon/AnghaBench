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
struct TYPE_4__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OptionC ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC7(LPCTSTR pszFiles)
{
    TCHAR FilePath[MAX_PATH];
    HANDLE hFind;
    WIN32_FIND_DATA FindData;
    DWORD LastError;

    /*
     * get the file path
     */
    if (!FUNC5(FilePath, pszFiles))
        return FALSE;

    /*
     * search for files in current directory
     */
    hFind = FUNC2(pszFiles, &FindData);
    if (hFind == INVALID_HANDLE_VALUE)
        return FALSE;

    do
    {
        if (FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        if (!FUNC0(FilePath, FindData.cFileName))
        {
            LastError = FUNC4();
            if (LastError == ERROR_ACCESS_DENIED)
            {
                FUNC6(LastError);
                if (!OptionC)
                {
                    FUNC1(hFind);
                    return FALSE;
                }
            }
            else
                break;
        }
    } while(FUNC3(hFind, &FindData));

    LastError = FUNC4();
    FUNC1(hFind);

    if (LastError != ERROR_NO_MORE_FILES)
    {
        FUNC6(LastError);
        return FALSE;
    }

    return TRUE;
}