
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwWaitHint; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; int dwWin32ExitCode; scalar_t__ dwControlsAccepted; int dwCurrentState; scalar_t__ dwServiceType; } ;
struct TYPE_6__ {TYPE_1__ Status; int ServiceListEntry; scalar_t__ dwResumeCount; scalar_t__ dwStartType; int lpServiceName; int lpDisplayName; int szServiceName; } ;
typedef TYPE_2__* PSERVICE ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*,int ) ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SERVICE_DISABLED ;
 int ERROR_SERVICE_NEVER_STARTED ;
 scalar_t__ ERROR_SUCCESS ;
 int FIELD_OFFSET (int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 int InsertTailList (int *,int *) ;
 int ResumeCount ;
 int SERVICE ;
 scalar_t__ SERVICE_DISABLED ;
 scalar_t__ SERVICE_DRIVER ;
 int SERVICE_STOPPED ;
 int ServiceListHead ;
 int * szServiceName ;
 int wcscpy (int ,int ) ;
 int wcslen (int ) ;

DWORD
ScmCreateNewServiceRecord(LPCWSTR lpServiceName,
                          PSERVICE *lpServiceRecord,
                          DWORD dwServiceType,
                          DWORD dwStartType)
{
    PSERVICE lpService = ((void*)0);

    DPRINT("Service: '%S'\n", lpServiceName);


    lpService = HeapAlloc(GetProcessHeap(),
                          HEAP_ZERO_MEMORY,
                          FIELD_OFFSET(SERVICE, szServiceName[wcslen(lpServiceName) + 1]));
    if (lpService == ((void*)0))
        return ERROR_NOT_ENOUGH_MEMORY;

    *lpServiceRecord = lpService;


    wcscpy(lpService->szServiceName, lpServiceName);
    lpService->lpServiceName = lpService->szServiceName;
    lpService->lpDisplayName = lpService->lpServiceName;


    lpService->dwStartType = dwStartType;


    lpService->dwResumeCount = ResumeCount++;


    InsertTailList(&ServiceListHead,
                   &lpService->ServiceListEntry);


    lpService->Status.dwServiceType = dwServiceType;
    lpService->Status.dwCurrentState = SERVICE_STOPPED;
    lpService->Status.dwControlsAccepted = 0;
    lpService->Status.dwWin32ExitCode =
        (dwStartType == SERVICE_DISABLED) ? ERROR_SERVICE_DISABLED : ERROR_SERVICE_NEVER_STARTED;
    lpService->Status.dwServiceSpecificExitCode = 0;
    lpService->Status.dwCheckPoint = 0;
    lpService->Status.dwWaitHint =
        (dwServiceType & SERVICE_DRIVER) ? 0 : 2000;

    return ERROR_SUCCESS;
}
