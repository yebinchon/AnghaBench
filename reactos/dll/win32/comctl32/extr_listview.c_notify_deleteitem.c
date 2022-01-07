
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int hwndSelf; } ;
struct TYPE_11__ {int lParam; scalar_t__ iSubItem; void* iItem; int mask; } ;
struct TYPE_10__ {int lParam; void* iItem; } ;
typedef TYPE_1__ NMLISTVIEW ;
typedef TYPE_2__ LVITEMW ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef void* INT ;
typedef int HWND ;
typedef int BOOL ;


 int IsWindow (int ) ;
 scalar_t__ LISTVIEW_GetItemT (TYPE_3__ const*,TYPE_2__*,int ) ;
 int LVIF_PARAM ;
 int LVN_DELETEITEM ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int notify_listview (TYPE_3__ const*,int ,TYPE_1__*) ;

__attribute__((used)) static BOOL notify_deleteitem(const LISTVIEW_INFO *infoPtr, INT nItem)
{
    NMLISTVIEW nmlv;
    LVITEMW item;
    HWND hwnd = infoPtr->hwndSelf;

    ZeroMemory(&nmlv, sizeof (NMLISTVIEW));
    nmlv.iItem = nItem;
    item.mask = LVIF_PARAM;
    item.iItem = nItem;
    item.iSubItem = 0;
    if (LISTVIEW_GetItemT(infoPtr, &item, TRUE)) nmlv.lParam = item.lParam;
    notify_listview(infoPtr, LVN_DELETEITEM, &nmlv);
    return IsWindow(hwnd);
}
