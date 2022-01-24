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
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  REG_MULTI_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SC_GROUP_IDENTIFIERW ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int FUNC6 (scalar_t__*) ; 

DWORD
FUNC7(HKEY hServiceKey,
                     LPCWSTR lpDependencies,
                     DWORD dwDependenciesLength)
{
    DWORD dwError = ERROR_SUCCESS;
    SIZE_T cchGroupLength = 0;
    SIZE_T cchServiceLength = 0;
    SIZE_T cchLength;
    LPWSTR lpGroupDeps;
    LPWSTR lpServiceDeps;
    LPCWSTR lpSrc;
    LPWSTR lpDst;

    if (*lpDependencies == 0)
    {
        FUNC3(hServiceKey,
                       L"DependOnService");
        FUNC3(hServiceKey,
                       L"DependOnGroup");
    }
    else
    {
        lpGroupDeps = FUNC1(FUNC0(),
                                HEAP_ZERO_MEMORY,
                                (dwDependenciesLength + 2) * sizeof(WCHAR));
        if (lpGroupDeps == NULL)
            return ERROR_NOT_ENOUGH_MEMORY;

        lpSrc = lpDependencies;
        lpDst = lpGroupDeps;
        while (*lpSrc != 0)
        {
            cchLength = FUNC6(lpSrc) + 1;
            if (*lpSrc == SC_GROUP_IDENTIFIERW)
            {
                lpSrc++;
                cchLength--;
                cchGroupLength += cchLength;
                FUNC5(lpDst, lpSrc);
                lpDst = lpDst + cchLength;
            }

            lpSrc = lpSrc + cchLength;
        }
        *lpDst = 0;
        lpDst++;
        cchGroupLength++;

        lpSrc = lpDependencies;
        lpServiceDeps = lpDst;
        while (*lpSrc != 0)
        {
            cchLength = FUNC6(lpSrc) + 1;
            if (*lpSrc != SC_GROUP_IDENTIFIERW)
            {
                cchServiceLength += cchLength;
                FUNC5(lpDst, lpSrc);
                lpDst = lpDst + cchLength;
            }

            lpSrc = lpSrc + cchLength;
        }
        *lpDst = 0;
        cchServiceLength++;

        if (cchGroupLength > 1)
        {
            dwError = FUNC4(hServiceKey,
                                     L"DependOnGroup",
                                     0,
                                     REG_MULTI_SZ,
                                     (LPBYTE)lpGroupDeps,
                                     (DWORD)(cchGroupLength * sizeof(WCHAR)));
        }
        else
        {
            FUNC3(hServiceKey,
                            L"DependOnGroup");
        }

        if (dwError == ERROR_SUCCESS)
        {
            if (cchServiceLength > 1)
            {
                dwError = FUNC4(hServiceKey,
                                         L"DependOnService",
                                         0,
                                         REG_MULTI_SZ,
                                         (LPBYTE)lpServiceDeps,
                                         (DWORD)(cchServiceLength * sizeof(WCHAR)));
            }
            else
            {
                FUNC3(hServiceKey,
                                L"DependOnService");
            }
        }

        FUNC2(FUNC0(), 0, lpGroupDeps);
    }

    return dwError;
}