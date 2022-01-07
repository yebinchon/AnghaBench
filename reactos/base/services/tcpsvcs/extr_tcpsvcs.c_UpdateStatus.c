
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
typedef int VOID ;
struct TYPE_5__ {scalar_t__ dwCheckPoint; scalar_t__ dwCurrentState; } ;
struct TYPE_4__ {TYPE_3__ servStatus; int hStatus; } ;
typedef TYPE_1__* PSERVICEINFO ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 int LOG_ALL ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int ,int ) ;
 int SetServiceStatus (int ,TYPE_3__*) ;
 int _snwprintf (char*,int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static VOID
UpdateStatus(PSERVICEINFO pServInfo,
             DWORD NewStatus,
             DWORD Check)
{
    WCHAR szSet[50];

    if (Check > 0)
        pServInfo->servStatus.dwCheckPoint += Check;
    else
        pServInfo->servStatus.dwCheckPoint = Check;

    if (NewStatus > 0)
        pServInfo->servStatus.dwCurrentState = NewStatus;

    _snwprintf(szSet,
               49,
               L"Service state 0x%lx, CheckPoint %lu",
               pServInfo->servStatus.dwCurrentState,
               pServInfo->servStatus.dwCheckPoint);
    LogEvent(szSet, 0, 0, LOG_FILE);

    if (!SetServiceStatus(pServInfo->hStatus, &pServInfo->servStatus))
        LogEvent(L"Cannot set service status", GetLastError(), 0, LOG_ALL);
}
