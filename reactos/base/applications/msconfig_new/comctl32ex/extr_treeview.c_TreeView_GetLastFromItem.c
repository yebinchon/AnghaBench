
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HTREEITEM ;


 int * TreeView_GetNextSibling (int ,int *) ;

HTREEITEM TreeView_GetLastFromItem(HWND hTree, HTREEITEM hItem)
{
    HTREEITEM htiRet = ((void*)0);
    HTREEITEM htiIterator;

    for (htiIterator = hItem ; htiIterator ; htiIterator = TreeView_GetNextSibling(hTree, htiIterator))
        htiRet = htiIterator;

    return htiRet;
}
