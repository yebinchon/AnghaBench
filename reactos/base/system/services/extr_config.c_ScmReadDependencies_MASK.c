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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ SC_GROUP_IDENTIFIERW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 int FUNC7 (scalar_t__*) ; 

DWORD
FUNC8(HKEY hServiceKey,
                    LPWSTR *lpDependencies,
                    DWORD *lpdwDependenciesLength)
{
    LPWSTR lpGroups = NULL;
    LPWSTR lpServices = NULL;
    SIZE_T cchGroupsLength = 0;
    SIZE_T cchServicesLength = 0;
    LPWSTR lpSrc;
    LPWSTR lpDest;
    SIZE_T cchLength;
    SIZE_T cchTotalLength;

    *lpDependencies = NULL;
    *lpdwDependenciesLength = 0;

    /* Read the dependency values */
    FUNC4(hServiceKey,
                  L"DependOnGroup",
                  &lpGroups);

    FUNC4(hServiceKey,
                  L"DependOnService",
                  &lpServices);

    /* Leave, if there are no dependencies */
    if (lpGroups == NULL && lpServices == NULL)
        return ERROR_SUCCESS;

    /* Determine the total buffer size for the dependencies */
    if (lpGroups)
    {
        FUNC0("Groups:\n");
        lpSrc = lpGroups;
        while (*lpSrc != 0)
        {
            FUNC0("  %S\n", lpSrc);

            cchLength = FUNC7(lpSrc) + 1;
            cchGroupsLength += cchLength + 1;

            lpSrc = lpSrc + cchLength;
        }
    }

    if (lpServices)
    {
        FUNC0("Services:\n");
        lpSrc = lpServices;
        while (*lpSrc != 0)
        {
            FUNC0("  %S\n", lpSrc);

            cchLength = FUNC7(lpSrc) + 1;
            cchServicesLength += cchLength;

            lpSrc = lpSrc + cchLength;
        }
    }

    cchTotalLength = cchGroupsLength + cchServicesLength + 1;
    FUNC0("cchTotalLength: %lu\n", cchTotalLength);

    /* Allocate the common buffer for the dependencies */
    *lpDependencies = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, cchTotalLength * sizeof(WCHAR));
    if (*lpDependencies == NULL)
    {
        if (lpGroups)
            FUNC3(FUNC1(), 0, lpGroups);

        if (lpServices)
            FUNC3(FUNC1(), 0, lpServices);

        return ERROR_NOT_ENOUGH_MEMORY;
    }

    /* Return the allocated buffer length in characters */
    *lpdwDependenciesLength = (DWORD)cchTotalLength;

    /* Copy the service dependencies into the common buffer */
    lpDest = *lpDependencies;
    if (lpServices)
    {
        FUNC5(lpDest,
               lpServices,
               cchServicesLength * sizeof(WCHAR));

        lpDest = lpDest + cchServicesLength;
    }

    /* Copy the group dependencies into the common buffer */
    if (lpGroups)
    {
        lpSrc = lpGroups;
        while (*lpSrc != 0)
        {
            cchLength = FUNC7(lpSrc) + 1;

            *lpDest = SC_GROUP_IDENTIFIERW;
            lpDest++;

            FUNC6(lpDest, lpSrc);

            lpDest = lpDest + cchLength;
            lpSrc = lpSrc + cchLength;
        }
    }

    /* Free the temporary buffers */
    if (lpGroups)
        FUNC3(FUNC1(), 0, lpGroups);

    if (lpServices)
        FUNC3(FUNC1(), 0, lpServices);

    return ERROR_SUCCESS;
}