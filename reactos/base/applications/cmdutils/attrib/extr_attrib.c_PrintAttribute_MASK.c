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
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FILE_ATTRIBUTE_ARCHIVE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FILE_ATTRIBUTE_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
INT
FUNC10(
    LPWSTR pszPath,
    LPWSTR pszFile,
    BOOL bRecurse)
{
    WIN32_FIND_DATAW findData;
    HANDLE hFind;
    WCHAR  szFullName[MAX_PATH];
    LPWSTR pszFileName;

    /* prepare full file name buffer */
    FUNC8(szFullName, pszPath);
    pszFileName = szFullName + FUNC9(szFullName);

    /* display all subdirectories */
    if (bRecurse)
    {
        /* append file name */
        FUNC8(pszFileName, pszFile);

        hFind = FUNC3(szFullName, &findData);
        if (hFind == INVALID_HANDLE_VALUE)
        {
            FUNC1(FUNC5(), pszFile);
            return 1;
        }

        do
        {
            if (!(findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
                continue;

            if (!FUNC7(findData.cFileName, L".") ||
                !FUNC7(findData.cFileName, L".."))
                continue;

            FUNC8(pszFileName, findData.cFileName);
            FUNC6(pszFileName, L"\\");
            FUNC10(szFullName, pszFile, bRecurse);
        }
        while(FUNC4(hFind, &findData));
        FUNC2(hFind);
    }

    /* append file name */
    FUNC8(pszFileName, pszFile);

    /* display current directory */
    hFind = FUNC3(szFullName, &findData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        FUNC1(FUNC5(), pszFile);
        return 1;
    }

    do
    {
        if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        FUNC8(pszFileName, findData.cFileName);

        FUNC0(StdOut,
                  L"%c  %c%c%c     %s\n",
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_ARCHIVE) ? L'A' : L' ',
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_SYSTEM) ? L'S' : L' ',
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_HIDDEN) ? L'H' : L' ',
                  (findData.dwFileAttributes & FILE_ATTRIBUTE_READONLY) ? L'R' : L' ',
                  szFullName);
    }
    while(FUNC4(hFind, &findData));
    FUNC2(hFind);

    return 0;
}