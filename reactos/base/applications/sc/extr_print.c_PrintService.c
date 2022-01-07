
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int dwServiceFlags; int dwProcessId; } ;
typedef TYPE_1__* LPSERVICE_STATUS_PROCESS ;
typedef int LPSERVICE_STATUS ;
typedef scalar_t__ LPCTSTR ;
typedef scalar_t__ BOOL ;


 int PrintServiceStatus (int ) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

VOID
PrintService(LPCTSTR lpServiceName,
             LPCTSTR lpDisplayName,
             LPSERVICE_STATUS_PROCESS pStatus,
             BOOL bExtended)
{
    _tprintf(_T("SERVICE_NAME: %s\n"), lpServiceName);

    if (lpDisplayName)
        _tprintf(_T("DISPLAY_NAME: %s\n"), lpDisplayName);


    PrintServiceStatus((LPSERVICE_STATUS)pStatus);

    if (bExtended)
    {
        _tprintf(_T("\tPID                : %lu\n"),
            pStatus->dwProcessId);
        _tprintf(_T("\tFLAGS              : %lu\n"),
            pStatus->dwServiceFlags);
    }

    _tprintf(_T("\n"));
}
