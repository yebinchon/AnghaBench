
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SIZE_T ;
typedef scalar_t__* LPWSTR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*,...) ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__ SC_GROUP_IDENTIFIERW ;
 int ScmReadString (int ,char*,scalar_t__**) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int wcscpy (scalar_t__*,scalar_t__*) ;
 int wcslen (scalar_t__*) ;

DWORD
ScmReadDependencies(HKEY hServiceKey,
                    LPWSTR *lpDependencies,
                    DWORD *lpdwDependenciesLength)
{
    LPWSTR lpGroups = ((void*)0);
    LPWSTR lpServices = ((void*)0);
    SIZE_T cchGroupsLength = 0;
    SIZE_T cchServicesLength = 0;
    LPWSTR lpSrc;
    LPWSTR lpDest;
    SIZE_T cchLength;
    SIZE_T cchTotalLength;

    *lpDependencies = ((void*)0);
    *lpdwDependenciesLength = 0;


    ScmReadString(hServiceKey,
                  L"DependOnGroup",
                  &lpGroups);

    ScmReadString(hServiceKey,
                  L"DependOnService",
                  &lpServices);


    if (lpGroups == ((void*)0) && lpServices == ((void*)0))
        return ERROR_SUCCESS;


    if (lpGroups)
    {
        DPRINT("Groups:\n");
        lpSrc = lpGroups;
        while (*lpSrc != 0)
        {
            DPRINT("  %S\n", lpSrc);

            cchLength = wcslen(lpSrc) + 1;
            cchGroupsLength += cchLength + 1;

            lpSrc = lpSrc + cchLength;
        }
    }

    if (lpServices)
    {
        DPRINT("Services:\n");
        lpSrc = lpServices;
        while (*lpSrc != 0)
        {
            DPRINT("  %S\n", lpSrc);

            cchLength = wcslen(lpSrc) + 1;
            cchServicesLength += cchLength;

            lpSrc = lpSrc + cchLength;
        }
    }

    cchTotalLength = cchGroupsLength + cchServicesLength + 1;
    DPRINT("cchTotalLength: %lu\n", cchTotalLength);


    *lpDependencies = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, cchTotalLength * sizeof(WCHAR));
    if (*lpDependencies == ((void*)0))
    {
        if (lpGroups)
            HeapFree(GetProcessHeap(), 0, lpGroups);

        if (lpServices)
            HeapFree(GetProcessHeap(), 0, lpServices);

        return ERROR_NOT_ENOUGH_MEMORY;
    }


    *lpdwDependenciesLength = (DWORD)cchTotalLength;


    lpDest = *lpDependencies;
    if (lpServices)
    {
        memcpy(lpDest,
               lpServices,
               cchServicesLength * sizeof(WCHAR));

        lpDest = lpDest + cchServicesLength;
    }


    if (lpGroups)
    {
        lpSrc = lpGroups;
        while (*lpSrc != 0)
        {
            cchLength = wcslen(lpSrc) + 1;

            *lpDest = SC_GROUP_IDENTIFIERW;
            lpDest++;

            wcscpy(lpDest, lpSrc);

            lpDest = lpDest + cchLength;
            lpSrc = lpSrc + cchLength;
        }
    }


    if (lpGroups)
        HeapFree(GetProcessHeap(), 0, lpGroups);

    if (lpServices)
        HeapFree(GetProcessHeap(), 0, lpServices);

    return ERROR_SUCCESS;
}
