
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int wFlags; struct TYPE_4__* pNext; } ;
typedef TYPE_1__ INPUT_LIST_NODE ;
typedef int HWND ;
typedef int * HIMAGELIST ;


 int AddToInputListView (int ,TYPE_1__*) ;
 int INPUT_LIST_NODE_FLAG_DELETED ;
 int ImageList_RemoveAll (int *) ;
 TYPE_1__* InputList_GetFirst () ;
 int LVSIL_SMALL ;
 int ListView_DeleteAllItems (int ) ;
 int * ListView_GetImageList (int ,int ) ;

__attribute__((used)) static VOID
UpdateInputListView(HWND hwndList)
{
    INPUT_LIST_NODE *pCurrentInputNode;
    HIMAGELIST hImageList;

    hImageList = ListView_GetImageList(hwndList, LVSIL_SMALL);
    if (hImageList != ((void*)0))
    {
        ImageList_RemoveAll(hImageList);
    }

    ListView_DeleteAllItems(hwndList);

    for (pCurrentInputNode = InputList_GetFirst();
         pCurrentInputNode != ((void*)0);
         pCurrentInputNode = pCurrentInputNode->pNext)
    {
        if (!(pCurrentInputNode->wFlags & INPUT_LIST_NODE_FLAG_DELETED))
        {
            AddToInputListView(hwndList, pCurrentInputNode);
        }
    }
}
