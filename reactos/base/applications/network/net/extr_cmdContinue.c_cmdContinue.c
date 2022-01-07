
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef int INT ;


 int CloseServiceHandle (int *) ;
 int ConPrintf (int ,char*,int ) ;
 int ConPuts (int ,char*) ;
 int ControlService (int *,int ,int *) ;
 int GetLastError () ;
 int MSG_CONTINUE_HELP ;
 int MSG_CONTINUE_SYNTAX ;
 int * OpenSCManager (int *,int ,int ) ;
 int * OpenService (int *,int *,int ) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int SC_MANAGER_ENUMERATE_SERVICE ;
 int SERVICES_ACTIVE_DATABASE ;
 int SERVICE_CONTROL_CONTINUE ;
 int SERVICE_PAUSE_CONTINUE ;
 int StdErr ;
 int StdOut ;
 scalar_t__ _wcsicmp (int *,char*) ;

INT cmdContinue(INT argc, WCHAR **argv)
{
    SC_HANDLE hManager = ((void*)0);
    SC_HANDLE hService = ((void*)0);
    SERVICE_STATUS status;
    INT nError = 0;
    INT i;

    if (argc != 3)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_CONTINUE_SYNTAX);
        return 1;
    }

    for (i = 2; i < argc; i++)
    {
        if (_wcsicmp(argv[i], L"/help") == 0)
        {
            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_CONTINUE_SYNTAX);
            PrintNetMessage(MSG_CONTINUE_HELP);
            return 1;
        }
    }

    hManager = OpenSCManager(((void*)0), SERVICES_ACTIVE_DATABASE, SC_MANAGER_ENUMERATE_SERVICE);
    if (hManager == ((void*)0))
    {
        ConPrintf(StdErr, L"[OpenSCManager] Error: %ld\n", GetLastError());
        nError = 1;
        goto done;
    }

    hService = OpenService(hManager, argv[2], SERVICE_PAUSE_CONTINUE);
    if (hService == ((void*)0))
    {
        ConPrintf(StdErr, L"[OpenService] Error: %ld\n", GetLastError());
        nError = 1;
        goto done;
    }

    if (!ControlService(hService, SERVICE_CONTROL_CONTINUE, &status))
    {
        ConPrintf(StdErr, L"[ControlService] Error: %ld\n", GetLastError());
        nError = 1;
    }

done:
    if (hService != ((void*)0))
        CloseServiceHandle(hService);

    if (hManager != ((void*)0))
        CloseServiceHandle(hManager);

    return nError;
}
