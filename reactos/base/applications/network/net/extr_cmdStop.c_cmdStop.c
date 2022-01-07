
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef int INT ;
typedef scalar_t__ DWORD ;


 int CloseServiceHandle (int *) ;
 int ConPrintf (int ,char*,scalar_t__) ;
 int ConPuts (int ,char*) ;
 int ControlService (int *,int ,int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int MSG_STOP_HELP ;
 int MSG_STOP_SYNTAX ;
 int * OpenSCManagerW (int *,int ,int ) ;
 int * OpenServiceW (int *,int *,int ) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICES_ACTIVE_DATABASE ;
 int SERVICE_CONTROL_STOP ;
 int SERVICE_STOP ;
 int StdErr ;
 int StdOut ;
 scalar_t__ _wcsicmp (int *,char*) ;

INT cmdStop(INT argc, WCHAR **argv)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    SERVICE_STATUS ServiceStatus;
    DWORD dwError = ERROR_SUCCESS;
    INT nError = 0;
    INT i;

    if (argc != 3)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_STOP_SYNTAX);
        return 1;
    }

    for (i = 2; i < argc; i++)
    {
        if (_wcsicmp(argv[i], L"/help") == 0)
        {
            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_STOP_SYNTAX);
            PrintNetMessage(MSG_STOP_HELP);
            return 1;
        }
    }

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
                            SERVICE_STOP);
    if (hService == ((void*)0))
    {
        dwError = GetLastError();
        nError = 1;
        goto done;
    }

    if (!ControlService(hService, SERVICE_CONTROL_STOP, &ServiceStatus))
    {
        dwError = GetLastError();
        nError = 1;
        goto done;
    }

done:
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
