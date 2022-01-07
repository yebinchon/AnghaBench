
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwControlsAccepted; scalar_t__ dwWaitHint; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; scalar_t__ dwWin32ExitCode; scalar_t__ dwCurrentState; int dwServiceType; } ;
typedef TYPE_1__ SERVICE_STATUS ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_SERVICE_SPECIFIC_ERROR ;
 int FALSE ;
 int KillService () ;
 int SERVICE_ACCEPT_PAUSE_CONTINUE ;
 int SERVICE_ACCEPT_SHUTDOWN ;
 int SERVICE_ACCEPT_STOP ;
 scalar_t__ SERVICE_START_PENDING ;
 scalar_t__ SERVICE_STOPPED ;
 scalar_t__ SERVICE_STOP_PENDING ;
 int SERVICE_WIN32_OWN_PROCESS ;
 int SetServiceStatus (int ,TYPE_1__*) ;
 int TRUE ;
 int fprintf (int ,char*) ;
 int hstatus ;
 int stderr ;

__attribute__((used)) static BOOL UpdateSCMStatus(DWORD dwCurrentState, DWORD dwWin32ExitCode,
                            DWORD dwServiceSpecificExitCode)
{
    SERVICE_STATUS status;

    status.dwServiceType = SERVICE_WIN32_OWN_PROCESS;
    status.dwCurrentState = dwCurrentState;

    if (dwCurrentState == SERVICE_START_PENDING
            || dwCurrentState == SERVICE_STOP_PENDING
            || dwCurrentState == SERVICE_STOPPED)
        status.dwControlsAccepted = 0;
    else
    {
        status.dwControlsAccepted = SERVICE_ACCEPT_STOP |
                                    SERVICE_ACCEPT_PAUSE_CONTINUE |
                                    SERVICE_ACCEPT_SHUTDOWN;
    }

    if (dwServiceSpecificExitCode == 0)
    {
        status.dwWin32ExitCode = dwWin32ExitCode;
    }
    else
    {
        status.dwWin32ExitCode = ERROR_SERVICE_SPECIFIC_ERROR;
    }

    status.dwServiceSpecificExitCode = dwServiceSpecificExitCode;
    status.dwCheckPoint = 0;
    status.dwWaitHint = 0;

    if (!SetServiceStatus(hstatus, &status))
    {
        fprintf(stderr, "Failed to set service status\n");
        KillService();
        return FALSE;
    }

    return TRUE;
}
