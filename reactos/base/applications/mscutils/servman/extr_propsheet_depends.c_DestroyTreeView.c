
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;


 int DestroyItem (int ,scalar_t__) ;
 scalar_t__ TreeView_GetFirstVisible (int ) ;
 scalar_t__ TreeView_GetNextSibling (int ,scalar_t__) ;

__attribute__((used)) static VOID
DestroyTreeView(HWND hTreeView)
{
    HTREEITEM hItem;


    hItem = TreeView_GetFirstVisible(hTreeView);
    if (hItem)
    {

        DestroyItem(hTreeView, hItem);


        while (hItem)
        {

            hItem = TreeView_GetNextSibling(hTreeView, hItem);
            if (hItem)
            {

                DestroyItem(hTreeView, hItem);
            }
        }
    }
}
