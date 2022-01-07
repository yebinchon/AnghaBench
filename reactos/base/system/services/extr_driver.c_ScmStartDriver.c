
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwWin32ExitCode; int dwControlsAccepted; int dwCurrentState; } ;
struct TYPE_6__ {TYPE_1__ Status; } ;
typedef TYPE_2__* PSERVICE ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int SERVICE_ACCEPT_STOP ;
 int SERVICE_RUNNING ;
 scalar_t__ ScmLoadDriver (TYPE_2__*) ;

DWORD
ScmStartDriver(PSERVICE pService)
{
    DWORD dwError;

    DPRINT("ScmStartDriver(%p)\n", pService);

    dwError = ScmLoadDriver(pService);
    if (dwError == ERROR_SUCCESS)
    {
        pService->Status.dwCurrentState = SERVICE_RUNNING;
        pService->Status.dwControlsAccepted = SERVICE_ACCEPT_STOP;
        pService->Status.dwWin32ExitCode = ERROR_SUCCESS;
    }

    DPRINT("ScmStartDriver returns %lu\n", dwError);

    return dwError;
}
