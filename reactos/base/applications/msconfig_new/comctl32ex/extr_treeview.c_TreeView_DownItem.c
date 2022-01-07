
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ HTREEITEM ;


 scalar_t__ TVI_LAST ;
 int TreeView_DeleteItem (int ,scalar_t__) ;
 scalar_t__ TreeView_GetNextSibling (int ,scalar_t__) ;
 int TreeView_GetParent (int ,scalar_t__) ;
 int TreeView_SelectItem (int ,scalar_t__) ;
 scalar_t__ Tree_Item_Copy (int ,scalar_t__,int ,scalar_t__) ;

void TreeView_DownItem(HWND hTree, HTREEITEM htiItemToDown)
{
    HTREEITEM htiNextItem, htiNewItem;

    if (!hTree || !htiItemToDown)
        return;

    htiNextItem = TreeView_GetNextSibling(hTree, htiItemToDown);
    if (!htiNextItem)
        htiNextItem = TVI_LAST;

    htiNewItem = Tree_Item_Copy(hTree, htiItemToDown, TreeView_GetParent(hTree, htiItemToDown), htiNextItem);
    TreeView_DeleteItem(hTree, htiItemToDown);
    TreeView_SelectItem(hTree, htiNewItem);

    return;
}
