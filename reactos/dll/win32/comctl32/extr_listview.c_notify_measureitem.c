
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nItemHeight; scalar_t__ nMeasureItemHeight; int hwndNotify; int hwndSelf; } ;
struct TYPE_4__ {int itemID; scalar_t__ itemHeight; int CtlID; scalar_t__ itemData; scalar_t__ itemWidth; int CtlType; } ;
typedef TYPE_1__ MEASUREITEMSTRUCT ;
typedef int LPARAM ;
typedef TYPE_2__ LISTVIEW_INFO ;
typedef int BOOL ;


 int FALSE ;
 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int ODT_LISTVIEW ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_MEASUREITEM ;
 scalar_t__ max (scalar_t__,int) ;

__attribute__((used)) static BOOL notify_measureitem(LISTVIEW_INFO *infoPtr)
{
    MEASUREITEMSTRUCT mis;
    mis.CtlType = ODT_LISTVIEW;
    mis.CtlID = GetWindowLongPtrW(infoPtr->hwndSelf, GWLP_ID);
    mis.itemID = -1;
    mis.itemWidth = 0;
    mis.itemData = 0;
    mis.itemHeight= infoPtr->nItemHeight;
    SendMessageW(infoPtr->hwndNotify, WM_MEASUREITEM, mis.CtlID, (LPARAM)&mis);
    if (infoPtr->nItemHeight != max(mis.itemHeight, 1))
    {
        infoPtr->nMeasureItemHeight = infoPtr->nItemHeight = max(mis.itemHeight, 1);
        return TRUE;
    }
    return FALSE;
}
