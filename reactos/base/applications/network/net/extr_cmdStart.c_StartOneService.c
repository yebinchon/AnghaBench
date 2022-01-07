
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * SC_HANDLE ;
typedef int LPVOID ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef scalar_t__ DWORD ;


 int CloseServiceHandle (int *) ;
 int ConPrintf (int ,char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int ** HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int ) ;
 int * OpenSCManagerW (int *,int ,int ) ;
 int * OpenServiceW (int *,int *,int ) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICES_ACTIVE_DATABASE ;
 int SERVICE_START ;
 int StartServiceW (int *,scalar_t__,int **) ;
 int StdErr ;

__attribute__((used)) static
INT
StartOneService(INT argc, WCHAR **argv)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    LPCWSTR *lpArgVectors = ((void*)0);
    DWORD dwError = ERROR_SUCCESS;
    INT nError = 0;
    INT i;

    hManager = OpenSCManagerW(((void*)0),
                              SERVICES_ACTIVE_DATABASE,
                              SC_MANAGER_ENUMERATE_SERVICE);
    if (hManager == ((void*)0))
    {
        dwError = GetLastError();
        nError = 1;
        goto done;
    }

    hService = OpenServiceW(hManager,
                            argv[2],
                            SERVICE_START);
    if (hService == ((void*)0))
    {
        dwError = GetLastError();
        nError = 1;
        goto done;
    }

    lpArgVectors = HeapAlloc(GetProcessHeap(),
                             0,
                             (argc - 2) * sizeof(LPCWSTR));
    if (lpArgVectors == ((void*)0))
    {
        dwError = GetLastError();
        nError = 1;
        goto done;
    }

    for (i = 2; i < argc; i++)
    {
        lpArgVectors[i - 2] = argv[i];
    }

    if (!StartServiceW(hService,
                       (DWORD)argc - 2,
                       lpArgVectors))
    {
        dwError = GetLastError();
        nError = 1;
    }

done:
    if (lpArgVectors != ((void*)0))
        HeapFree(GetProcessHeap(), 0, (LPVOID)lpArgVectors);

    if (hService != ((void*)0))
        CloseServiceHandle(hService);

    if (hManager != ((void*)0))
        CloseServiceHandle(hManager);

    if (dwError != ERROR_SUCCESS)
    {

        ConPrintf(StdErr, L"Error: %lu\n", dwError);
    }

    return nError;
}
