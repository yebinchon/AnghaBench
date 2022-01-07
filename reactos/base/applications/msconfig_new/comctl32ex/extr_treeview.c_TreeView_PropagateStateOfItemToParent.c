
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HWND ;
typedef int HTREEITEM ;


 int INDEXTOSTATEIMAGEMASK (scalar_t__) ;
 int TVIS_STATEIMAGEMASK ;
 int TreeView_GetParent (int ,int ) ;
 scalar_t__ TreeView_GetRealSubtreeState (int ,int ) ;
 int TreeView_SetItemState (int ,int ,int ,int ) ;

void TreeView_PropagateStateOfItemToParent(HWND hTree, HTREEITEM htiItem)
{
    HTREEITEM htiParent;
    UINT uGlobalSiblingsCheckState;

    if (!hTree || !htiItem )
        return;

    htiParent = TreeView_GetParent(hTree, htiItem);
    if (!htiParent)
        return;

    uGlobalSiblingsCheckState = TreeView_GetRealSubtreeState(hTree, htiParent);
    TreeView_SetItemState(hTree, htiParent, INDEXTOSTATEIMAGEMASK(uGlobalSiblingsCheckState + 1), TVIS_STATEIMAGEMASK);
    TreeView_PropagateStateOfItemToParent(hTree, htiParent);

    return;
}
