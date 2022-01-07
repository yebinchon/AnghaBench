
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hDependsImageList; int hDependsTreeView1; int hDependsWnd; } ;
typedef TYPE_1__* PDEPENDDATA ;
typedef int LPWSTR ;
typedef int BOOL ;


 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_DEPEND_TREE1 ;
 int ImageList_Destroy (int *) ;
 int TV1_AddDependantsToTree (TYPE_1__*,int *,int ) ;
 int TVSIL_NORMAL ;
 int TreeView_SetImageList (int ,int *,int ) ;

BOOL
TV1_Initialize(PDEPENDDATA pDependData,
               LPWSTR lpServiceName)
{
    BOOL bRet = FALSE;


    pDependData->hDependsTreeView1 = GetDlgItem(pDependData->hDependsWnd, IDC_DEPEND_TREE1);
    if (!pDependData->hDependsTreeView1)
    {
        ImageList_Destroy(pDependData->hDependsImageList);
        pDependData->hDependsImageList = ((void*)0);
        return FALSE;
    }
    (void)TreeView_SetImageList(pDependData->hDependsTreeView1,
                                pDependData->hDependsImageList,
                                TVSIL_NORMAL);


    TV1_AddDependantsToTree(pDependData, ((void*)0), lpServiceName);

    return bRet;
}
