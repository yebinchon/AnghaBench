
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;
typedef int * HTREEITEM ;


 int OP (int ,int ) ;
 int TreeView_GetCheckState (int ,int *) ;
 int * TreeView_GetChild (int ,int *) ;
 int * TreeView_GetNextSibling (int ,int *) ;

UINT TreeView_GetRealSubtreeState(HWND hTree, HTREEITEM htiSubtreeItem)
{


    HTREEITEM htiIterator = TreeView_GetChild(hTree, htiSubtreeItem);
    UINT uRealSubtreeState = TreeView_GetCheckState(hTree, htiIterator);
    while ( htiIterator && ( (htiIterator = TreeView_GetNextSibling(hTree, htiIterator)) != ((void*)0) ) )
    {
        UINT temp = TreeView_GetCheckState(hTree, htiIterator);
        uRealSubtreeState = ((uRealSubtreeState) == (temp) ? (uRealSubtreeState) : 2);
    }

    return uRealSubtreeState;
}
