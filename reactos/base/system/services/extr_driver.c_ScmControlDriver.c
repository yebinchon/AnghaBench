
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwCurrentState; int dwControlsAccepted; } ;
struct TYPE_7__ {TYPE_1__ Status; } ;
typedef TYPE_2__* PSERVICE ;
typedef int LPSERVICE_STATUS ;
typedef int DWORD ;


 int DPRINT (char*,...) ;
 int ERROR_INVALID_SERVICE_CONTROL ;
 int ERROR_SUCCESS ;


 int SERVICE_RUNNING ;
 int SERVICE_STOP_PENDING ;
 int ScmGetDriverStatus (TYPE_2__*,int ) ;
 int ScmUnloadDriver (TYPE_2__*) ;

DWORD
ScmControlDriver(PSERVICE lpService,
                 DWORD dwControl,
                 LPSERVICE_STATUS lpServiceStatus)
{
    DWORD dwError;

    DPRINT("ScmControlDriver() called\n");

    switch (dwControl)
    {
        case 128:

            dwError = ScmGetDriverStatus(lpService,
                                         lpServiceStatus);
            if (dwError != ERROR_SUCCESS)
                goto done;


            if (lpService->Status.dwCurrentState != SERVICE_RUNNING)
            {
                dwError = ERROR_INVALID_SERVICE_CONTROL;
                goto done;
            }


            dwError = ScmUnloadDriver(lpService);
            if (dwError == ERROR_INVALID_SERVICE_CONTROL)
            {

                lpService->Status.dwControlsAccepted = 0;
                goto done;
            }


            lpService->Status.dwCurrentState = SERVICE_STOP_PENDING;


            dwError = ScmGetDriverStatus(lpService,
                                         lpServiceStatus);
            break;

        case 129:
            dwError = ScmGetDriverStatus(lpService,
                                         lpServiceStatus);
            break;

        default:
            dwError = ERROR_INVALID_SERVICE_CONTROL;
    }

done:
    DPRINT("ScmControlDriver() done (Erorr: %lu)\n", dwError);

    return dwError;
}
