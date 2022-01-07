
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int dwImageRunCount; int dwProcessId; int hProcess; int pszImagePath; int * hToken; } ;
struct TYPE_15__ {int dwServiceType; } ;
struct TYPE_17__ {TYPE_9__* lpImage; int lpServiceName; TYPE_1__ Status; } ;
struct TYPE_16__ {int cb; char* lpDesktop; int hThread; int dwProcessId; int hProcess; int dwThreadId; int dwFlags; } ;
typedef int StartupInfo ;
typedef TYPE_2__ STARTUPINFOW ;
typedef int ProcessInformation ;
typedef TYPE_3__* PSERVICE ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int LPWSTR ;
typedef int * LPVOID ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CREATE_SUSPENDED ;
 int CREATE_UNICODE_ENVIRONMENT ;
 int CloseHandle (int ) ;
 int CreateEnvironmentBlock (int **,int *,scalar_t__) ;
 scalar_t__ CreateProcessAsUserW (int *,int *,int ,int *,int *,scalar_t__,int,int *,int *,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ CreateProcessW (int *,int ,int *,int *,scalar_t__,int,int *,int *,TYPE_2__*,TYPE_2__*) ;
 int DETACHED_PROCESS ;
 int DPRINT (char*,TYPE_3__*,...) ;
 int DPRINT1 (char*,scalar_t__,...) ;
 int DestroyEnvironmentBlock (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ ImpersonateLoggedOnUser (int *) ;
 scalar_t__ NoInteractiveServices ;
 int ResumeThread (int ) ;
 int RevertToSelf () ;
 int SERVICE_INTERACTIVE_PROCESS ;
 int STARTF_INHERITDESKTOP ;
 int ScmIsSecurityService (TYPE_9__*) ;
 scalar_t__ ScmSendStartCommand (TYPE_3__*,scalar_t__,int *) ;
 scalar_t__ ScmWaitForServiceConnect (TYPE_3__*) ;
 scalar_t__ TRUE ;
 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static DWORD
ScmStartUserModeService(PSERVICE Service,
                        DWORD argc,
                        LPWSTR* argv)
{
    PROCESS_INFORMATION ProcessInformation;
    STARTUPINFOW StartupInfo;
    LPVOID lpEnvironment;
    BOOL Result;
    DWORD dwError = ERROR_SUCCESS;

    DPRINT("ScmStartUserModeService(%p)\n", Service);


    if (Service->lpImage->dwImageRunCount > 1)
    {

        return ScmSendStartCommand(Service, argc, argv);
    }


    ZeroMemory(&StartupInfo, sizeof(StartupInfo));
    StartupInfo.cb = sizeof(StartupInfo);
    ZeroMemory(&ProcessInformation, sizeof(ProcessInformation));

    if (Service->lpImage->hToken)
    {


        if (!CreateEnvironmentBlock(&lpEnvironment, Service->lpImage->hToken, FALSE))
        {

            DPRINT1("CreateEnvironmentBlock() failed with error %d; service '%S' will run with the current environment.\n",
                    GetLastError(), Service->lpServiceName);
            lpEnvironment = ((void*)0);
        }


        Result = ImpersonateLoggedOnUser(Service->lpImage->hToken);
        if (Result)
        {

            Result = CreateProcessAsUserW(Service->lpImage->hToken,
                                          ((void*)0),
                                          Service->lpImage->pszImagePath,
                                          ((void*)0),
                                          ((void*)0),
                                          FALSE,
                                          CREATE_UNICODE_ENVIRONMENT | DETACHED_PROCESS | CREATE_SUSPENDED,
                                          lpEnvironment,
                                          ((void*)0),
                                          &StartupInfo,
                                          &ProcessInformation);
            if (!Result)
                dwError = GetLastError();


            RevertToSelf();
        }
        else
        {
            dwError = GetLastError();
            DPRINT1("ImpersonateLoggedOnUser() failed with error %d\n", dwError);
        }
    }
    else
    {


        if (!CreateEnvironmentBlock(&lpEnvironment, ((void*)0), TRUE))
        {

            DPRINT1("CreateEnvironmentBlock() failed with error %d; service '%S' will run with the current environment.\n",
                    GetLastError(), Service->lpServiceName);
            lpEnvironment = ((void*)0);
        }


        if ((NoInteractiveServices == 0) &&
            (Service->Status.dwServiceType & SERVICE_INTERACTIVE_PROCESS))
        {
            StartupInfo.dwFlags |= STARTF_INHERITDESKTOP;
            StartupInfo.lpDesktop = L"WinSta0\\Default";
        }

        if (!ScmIsSecurityService(Service->lpImage))
        {
            Result = CreateProcessW(((void*)0),
                                    Service->lpImage->pszImagePath,
                                    ((void*)0),
                                    ((void*)0),
                                    FALSE,
                                    CREATE_UNICODE_ENVIRONMENT | DETACHED_PROCESS | CREATE_SUSPENDED,
                                    lpEnvironment,
                                    ((void*)0),
                                    &StartupInfo,
                                    &ProcessInformation);
            if (!Result)
                dwError = GetLastError();
        }
        else
        {
            Result = TRUE;
            dwError = ERROR_SUCCESS;
        }
    }

    if (lpEnvironment)
        DestroyEnvironmentBlock(lpEnvironment);

    if (!Result)
    {
        DPRINT1("Starting '%S' failed with error %d\n",
                Service->lpServiceName, dwError);
        return dwError;
    }

    DPRINT("Process Id: %lu  Handle %p\n",
           ProcessInformation.dwProcessId,
           ProcessInformation.hProcess);
    DPRINT("Thread Id: %lu  Handle %p\n",
           ProcessInformation.dwThreadId,
           ProcessInformation.hThread);


    Service->lpImage->hProcess = ProcessInformation.hProcess;
    Service->lpImage->dwProcessId = ProcessInformation.dwProcessId;


    ResumeThread(ProcessInformation.hThread);
    CloseHandle(ProcessInformation.hThread);


    dwError = ScmWaitForServiceConnect(Service);
    if (dwError != ERROR_SUCCESS)
    {
        DPRINT1("Connecting control pipe failed! (Error %lu)\n", dwError);
        Service->lpImage->dwProcessId = 0;
        return dwError;
    }


    return ScmSendStartCommand(Service, argc, argv);
}
