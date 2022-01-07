
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HTREEITEM ;


 int * TreeView_GetChild (int ,int *) ;
 int * TreeView_GetLastFromItem (int ,int *) ;
 int * TreeView_GetParent (int ,int *) ;
 int * TreeView_GetPrevSibling (int ,int *) ;

HTREEITEM TreeView_GetPrev(HWND hTree, HTREEITEM hItem)
{
    HTREEITEM hPrev, hTmp;

    if (!hTree)
        return ((void*)0);

    hPrev = TreeView_GetPrevSibling(hTree, hItem);
    if (!hPrev)
        return TreeView_GetParent(hTree, hItem);

    hTmp = TreeView_GetChild(hTree, hPrev);
    if (hTmp)
        return TreeView_GetLastFromItem(hTree, hTmp);
    else
        return hPrev;
}
