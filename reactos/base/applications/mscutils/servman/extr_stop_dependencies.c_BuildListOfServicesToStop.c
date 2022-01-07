
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwCurrentState; } ;
struct TYPE_6__ {int lpServiceName; TYPE_1__ ServiceStatus; } ;
typedef int LPWSTR ;
typedef TYPE_2__* LPENUM_SERVICE_STATUS ;
typedef size_t DWORD ;
typedef int BOOL ;


 int AddServiceToList (int *,int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ SERVICE_STOPPED ;
 scalar_t__ SERVICE_STOP_PENDING ;
 int TRUE ;
 TYPE_2__* TV2_GetDependants (int ,size_t*) ;

__attribute__((used)) static BOOL
BuildListOfServicesToStop(LPWSTR *lpServiceList,
                          LPWSTR lpServiceName)
{
    LPENUM_SERVICE_STATUS lpServiceStatus;
    DWORD dwCount, i;
    BOOL bRet = FALSE;


    lpServiceStatus = TV2_GetDependants(lpServiceName, &dwCount);
    if (lpServiceStatus)
    {
        for (i = 0; i < dwCount; i++)
        {

            if (lpServiceStatus[i].ServiceStatus.dwCurrentState != SERVICE_STOPPED &&
                lpServiceStatus[i].ServiceStatus.dwCurrentState != SERVICE_STOP_PENDING)
            {

                *lpServiceList = AddServiceToList(lpServiceList, lpServiceStatus[i].lpServiceName);


                bRet = TRUE;
            }
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpServiceStatus);
    }

    return bRet;
}
