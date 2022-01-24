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
struct TYPE_4__ {int dwFileAttributes; char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static
INT
FUNC11(
    LPWSTR pszPath,
    LPWSTR pszFile,
    DWORD dwMask,
    DWORD dwAttrib,
    BOOL bRecurse,
    BOOL bDirectories)
{
    WIN32_FIND_DATAW findData;
    HANDLE hFind;
    DWORD  dwAttribute;
    WCHAR  szFullName[MAX_PATH];
    LPWSTR pszFileName;

    /* prepare full file name buffer */
    FUNC9(szFullName, pszPath);
    pszFileName = szFullName + FUNC10(szFullName);

    /* change all subdirectories */
    if (bRecurse)
    {
        /* append file name */
        FUNC9(pszFileName, L"*.*");

        hFind = FUNC2(szFullName, &findData);
        if (hFind == INVALID_HANDLE_VALUE)
        {
            FUNC0(FUNC5(), pszFile);
            return 1;
        }

        do
        {
            if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            {
                if (!FUNC8(findData.cFileName, L".") ||
                    !FUNC8(findData.cFileName, L".."))
                    continue;

                FUNC9(pszFileName, findData.cFileName);
                FUNC7(pszFileName, L"\\");

                FUNC11(szFullName, pszFile, dwMask,
                                dwAttrib, bRecurse, bDirectories);
            }
        }
        while (FUNC3(hFind, &findData));
        FUNC1(hFind);
    }

    /* append file name */
    FUNC9(pszFileName, pszFile);

    hFind = FUNC2(szFullName, &findData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        FUNC0(FUNC5(), pszFile);
        return 1;
    }

    do
    {
        if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        FUNC9(pszFileName, findData.cFileName);

        dwAttribute = FUNC4 (szFullName);

        if (dwAttribute != 0xFFFFFFFF)
        {
            dwAttribute = (dwAttribute & ~dwMask) | dwAttrib;
            FUNC6(szFullName, dwAttribute);
        }
    }
    while (FUNC3(hFind, &findData));
    FUNC1(hFind);

    return 0;
}