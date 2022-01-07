
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int dwControlsAccepted; int dwWaitHint; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; scalar_t__ dwWin32ExitCode; scalar_t__ dwCurrentState; int dwServiceType; } ;
typedef scalar_t__ DWORD ;


 int SERVICE_ACCEPT_PAUSE_CONTINUE ;
 int SERVICE_ACCEPT_SHUTDOWN ;
 int SERVICE_ACCEPT_STOP ;
 scalar_t__ SERVICE_CONTINUE_PENDING ;
 scalar_t__ SERVICE_PAUSED ;
 scalar_t__ SERVICE_PAUSE_PENDING ;
 scalar_t__ SERVICE_RUNNING ;
 scalar_t__ SERVICE_START_PENDING ;
 scalar_t__ SERVICE_STOP_PENDING ;
 int SERVICE_WIN32_OWN_PROCESS ;
 TYPE_1__ ServiceStatus ;
 int ServiceStatusHandle ;
 int SetServiceStatus (int ,TYPE_1__*) ;

__attribute__((used)) static VOID
UpdateServiceStatus(DWORD dwState)
{
    ServiceStatus.dwServiceType = SERVICE_WIN32_OWN_PROCESS;
    ServiceStatus.dwCurrentState = dwState;

    if (dwState == SERVICE_PAUSED || dwState == SERVICE_RUNNING)
        ServiceStatus.dwControlsAccepted = SERVICE_ACCEPT_STOP |
                                           SERVICE_ACCEPT_SHUTDOWN |
                                           SERVICE_ACCEPT_PAUSE_CONTINUE;
    else
        ServiceStatus.dwControlsAccepted = 0;

    ServiceStatus.dwWin32ExitCode = 0;
    ServiceStatus.dwServiceSpecificExitCode = 0;
    ServiceStatus.dwCheckPoint = 0;

    if (dwState == SERVICE_START_PENDING ||
        dwState == SERVICE_STOP_PENDING ||
        dwState == SERVICE_PAUSE_PENDING ||
        dwState == SERVICE_CONTINUE_PENDING)
        ServiceStatus.dwWaitHint = 10000;
    else
        ServiceStatus.dwWaitHint = 0;

    SetServiceStatus(ServiceStatusHandle,
                     &ServiceStatus);
}
