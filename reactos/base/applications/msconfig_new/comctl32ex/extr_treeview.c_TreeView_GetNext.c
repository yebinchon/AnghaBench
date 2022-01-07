
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HTREEITEM ;


 int * TreeView_GetChild (int ,int *) ;
 int * TreeView_GetNextSibling (int ,int *) ;
 int * TreeView_GetParent (int ,int *) ;

HTREEITEM TreeView_GetNext(HWND hTree, HTREEITEM hItem)
{
    HTREEITEM hNext;

    if (!hTree)
        return ((void*)0);

    hNext = TreeView_GetChild(hTree, hItem);
    if (hNext)
        return hNext;

    hNext = TreeView_GetNextSibling(hTree, hItem);
    if (hNext)
        return hNext;
    else
        return TreeView_GetNextSibling(hTree, TreeView_GetParent(hTree, hItem));
}
