
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwCurrentState; scalar_t__ dwCheckPoint; scalar_t__ dwControlsAccepted; } ;
typedef int SERVICE_STATUS_HANDLE ;
typedef TYPE_1__ SERVICE_STATUS ;
typedef int DWORD ;
typedef int BOOL ;


 int MSG_FLAGS_ERROR ;
 int MsgToEventLog (int ,int ) ;
 scalar_t__ SERVICE_ACCEPT_STOP ;
 scalar_t__ SERVICE_RUNNING ;
 scalar_t__ SERVICE_START_PENDING ;
 scalar_t__ SERVICE_STOPPED ;
 int SetServiceStatus (int ,TYPE_1__*) ;
 int TEXT (char*) ;
 int TRUE ;

BOOL
ReportStatusToSCMgr(SERVICE_STATUS_HANDLE service, SERVICE_STATUS *status)
{
    static DWORD dwCheckPoint = 1;
    BOOL res = TRUE;

    if (status->dwCurrentState == SERVICE_START_PENDING)
    {
        status->dwControlsAccepted = 0;
    }
    else
    {
        status->dwControlsAccepted = SERVICE_ACCEPT_STOP;
    }

    if (status->dwCurrentState == SERVICE_RUNNING
        || status->dwCurrentState == SERVICE_STOPPED)
    {
        status->dwCheckPoint = 0;
    }
    else
    {
        status->dwCheckPoint = dwCheckPoint++;
    }


    res = SetServiceStatus(service, status);
    if (!res)
    {
        MsgToEventLog(MSG_FLAGS_ERROR, TEXT("SetServiceStatus"));
    }

    return res;
}
