
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lpServiceName; } ;
typedef int * SC_RPC_LOCK ;
typedef TYPE_1__* PSERVICE ;
typedef int LPWSTR ;
typedef scalar_t__ DWORD ;


 int ControlServiceCriticalSection ;
 int DPRINT (char*,...) ;
 scalar_t__ ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ ScmAcquireServiceStartLock (int ,int **) ;
 int ScmInitialize ;
 scalar_t__ ScmLoadService (TYPE_1__*,scalar_t__,int *) ;
 int ScmReleaseServiceStartLock (int **) ;
 int TRUE ;

DWORD
ScmStartService(PSERVICE Service,
                DWORD argc,
                LPWSTR* argv)
{
    DWORD dwError = ERROR_SUCCESS;
    SC_RPC_LOCK Lock = ((void*)0);

    DPRINT("ScmStartService() called\n");
    DPRINT("Start Service %p (%S)\n", Service, Service->lpServiceName);


    EnterCriticalSection(&ControlServiceCriticalSection);






    if (!ScmInitialize)
    {
        dwError = ScmAcquireServiceStartLock(TRUE, &Lock);
        if (dwError != ERROR_SUCCESS) goto done;
    }


    dwError = ScmLoadService(Service, argc, argv);


    if (Lock) ScmReleaseServiceStartLock(&Lock);

done:
    LeaveCriticalSection(&ControlServiceCriticalSection);

    DPRINT("ScmStartService() done (Error %lu)\n", dwError);

    return dwError;
}
