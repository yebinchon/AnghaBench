
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hDependsImageList; int hDependsTreeView2; int hDependsWnd; } ;
typedef TYPE_1__* PDEPENDDATA ;
typedef int LPWSTR ;
typedef int BOOL ;


 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_DEPEND_TREE2 ;
 int ImageList_Destroy (int *) ;
 int TV2_AddDependantsToTree (TYPE_1__*,int *,int ) ;
 int TVSIL_NORMAL ;
 int TreeView_SetImageList (int ,int *,int ) ;

BOOL
TV2_Initialize(PDEPENDDATA pDependData,
               LPWSTR lpServiceName)
{
    BOOL bRet = FALSE;


    pDependData->hDependsTreeView2 = GetDlgItem(pDependData->hDependsWnd, IDC_DEPEND_TREE2);
    if (!pDependData->hDependsTreeView2)
    {
        ImageList_Destroy(pDependData->hDependsImageList);
        pDependData->hDependsImageList = ((void*)0);
        return FALSE;
    }
    (void)TreeView_SetImageList(pDependData->hDependsTreeView2,
                                pDependData->hDependsImageList,
                                TVSIL_NORMAL);


    TV2_AddDependantsToTree(pDependData, ((void*)0), lpServiceName);

    return bRet;
}
