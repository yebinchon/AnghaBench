
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ HTREEITEM ;


 scalar_t__ TVI_FIRST ;
 int TreeView_DeleteItem (int ,scalar_t__) ;
 int TreeView_GetParent (int ,scalar_t__) ;
 scalar_t__ TreeView_GetPrevSibling (int ,scalar_t__) ;
 int TreeView_SelectItem (int ,scalar_t__) ;
 scalar_t__ Tree_Item_Copy (int ,scalar_t__,int ,scalar_t__) ;

void TreeView_UpItem(HWND hTree, HTREEITEM htiItemToUp)
{
    HTREEITEM htiPrevItem, htiPrevPrevItem, htiNewItem;

    if (!hTree || !htiItemToUp)
        return;

    htiPrevItem = TreeView_GetPrevSibling(hTree, htiItemToUp);
    htiPrevPrevItem = TreeView_GetPrevSibling(hTree, htiPrevItem);
    if (!htiPrevPrevItem)
        htiPrevPrevItem = TVI_FIRST;


    htiNewItem = Tree_Item_Copy(hTree, htiItemToUp, TreeView_GetParent(hTree, htiItemToUp), htiPrevPrevItem);
    TreeView_DeleteItem(hTree, htiItemToUp);
    TreeView_SelectItem(hTree, htiNewItem);

    return;
}
