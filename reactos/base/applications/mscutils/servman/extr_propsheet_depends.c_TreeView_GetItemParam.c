
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int lParam; int hItem; int member_0; } ;
typedef TYPE_1__ TVITEMW ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HTREEITEM ;


 int TVIF_HANDLE ;
 int TVIF_PARAM ;
 scalar_t__ TreeView_GetItem (int ,TYPE_1__*) ;

__attribute__((used)) static LPARAM
TreeView_GetItemParam(HWND hTreeView,
                      HTREEITEM hItem)
{
    LPARAM lParam = 0;
    TVITEMW tv = {0};

    tv.mask = TVIF_PARAM | TVIF_HANDLE;
    tv.hItem = hItem;

    if (TreeView_GetItem(hTreeView, &tv))
    {
        lParam = tv.lParam;
    }

    return lParam;
}
