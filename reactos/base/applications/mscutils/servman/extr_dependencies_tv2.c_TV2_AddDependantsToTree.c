
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int dwServiceType; } ;
struct TYPE_9__ {TYPE_1__ ServiceStatus; int * lpServiceName; int lpDisplayName; } ;
struct TYPE_8__ {int hDependsTreeView2; } ;
typedef TYPE_2__* PDEPENDDATA ;
typedef int LPWSTR ;
typedef TYPE_3__* LPENUM_SERVICE_STATUSW ;
typedef int * HTREEITEM ;
typedef size_t DWORD ;
typedef int BOOL ;


 int AddItemToTreeView (int ,int *,int ,int *,int ,int ) ;
 int AllocAndLoadString (int *,int ,int ) ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int IDS_NO_DEPENDS ;
 int LocalFree (int ) ;
 TYPE_3__* TV2_GetDependants (int ,size_t*) ;
 int TV2_HasDependantServices (int *) ;
 int hInstance ;

VOID
TV2_AddDependantsToTree(PDEPENDDATA pDependData,
                        HTREEITEM hParent,
                        LPWSTR lpServiceName)
{

    LPENUM_SERVICE_STATUSW lpServiceStatus;
    LPWSTR lpNoDepends;
    DWORD count, i;
    BOOL bHasChildren;


    lpServiceStatus = TV2_GetDependants(lpServiceName, &count);
    if (lpServiceStatus)
    {
        for (i = 0; i < count; i++)
        {

            bHasChildren = TV2_HasDependantServices(lpServiceStatus[i].lpServiceName);


            AddItemToTreeView(pDependData->hDependsTreeView2,
                              hParent,
                              lpServiceStatus[i].lpDisplayName,
                              lpServiceStatus[i].lpServiceName,
                              lpServiceStatus[i].ServiceStatus.dwServiceType,
                              bHasChildren);
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpServiceStatus);
    }
    else
    {

        if (!hParent)
        {

            AllocAndLoadString(&lpNoDepends, hInstance, IDS_NO_DEPENDS);

            AddItemToTreeView(pDependData->hDependsTreeView2,
                              ((void*)0),
                              lpNoDepends,
                              ((void*)0),
                              0,
                              FALSE);

            LocalFree(lpNoDepends);


            EnableWindow(pDependData->hDependsTreeView2, FALSE);
        }
    }
}
