
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int dis ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_17__ {scalar_t__ itemID; scalar_t__ CtlID; int itemData; TYPE_1__ rcItem; int hDC; int hwndItem; int itemState; int itemAction; int CtlType; } ;
struct TYPE_16__ {scalar_t__ nFocusedItem; scalar_t__ uView; scalar_t__ nItemHeight; int dwStyle; int hwndSelf; int hwndNotify; scalar_t__ hDefaultFont; scalar_t__ hFont; } ;
struct TYPE_15__ {scalar_t__ iItem; int lParam; int mask; scalar_t__ iSubItem; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ LVITEMW ;
typedef int LPARAM ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef TYPE_4__ DRAWITEMSTRUCT ;
typedef scalar_t__ BOOL ;


 int GWLP_ID ;
 int GetDC (int ) ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 int LISTVIEW_GetItemBox (TYPE_3__ const*,scalar_t__,TYPE_1__*) ;
 int LISTVIEW_GetItemW (TYPE_3__ const*,TYPE_2__*) ;
 int LISTVIEW_InvalidateItem (TYPE_3__ const*,scalar_t__) ;
 int LISTVIEW_InvalidateRect (TYPE_3__ const*,TYPE_1__*) ;
 int LVIF_PARAM ;
 int LVS_OWNERDRAWFIXED ;
 scalar_t__ LV_VIEW_DETAILS ;
 scalar_t__ LV_VIEW_ICON ;
 int ODA_FOCUS ;
 int ODS_FOCUS ;
 int ODT_LISTVIEW ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int WM_DRAWITEM ;
 int ZeroMemory (TYPE_4__*,int) ;

__attribute__((used)) static void LISTVIEW_ShowFocusRect(const LISTVIEW_INFO *infoPtr, BOOL fShow)
{
    HDC hdc;

    TRACE("fShow=%d, nItem=%d\n", fShow, infoPtr->nFocusedItem);

    if (infoPtr->nFocusedItem < 0) return;


    if (infoPtr->uView == LV_VIEW_ICON)
    {
 RECT rcBox;

 LISTVIEW_GetItemBox(infoPtr, infoPtr->nFocusedItem, &rcBox);
 if ((rcBox.bottom - rcBox.top) > infoPtr->nItemHeight)
 {
     LISTVIEW_InvalidateRect(infoPtr, &rcBox);
     return;
 }
    }

    if (!(hdc = GetDC(infoPtr->hwndSelf))) return;


    if ((infoPtr->dwStyle & LVS_OWNERDRAWFIXED) && (infoPtr->uView == LV_VIEW_DETAILS))
    {
 DRAWITEMSTRUCT dis;
 LVITEMW item;

 HFONT hFont = infoPtr->hFont ? infoPtr->hFont : infoPtr->hDefaultFont;
 HFONT hOldFont = SelectObject(hdc, hFont);

        item.iItem = infoPtr->nFocusedItem;
 item.iSubItem = 0;
        item.mask = LVIF_PARAM;
 if (!LISTVIEW_GetItemW(infoPtr, &item)) goto done;

 ZeroMemory(&dis, sizeof(dis));
 dis.CtlType = ODT_LISTVIEW;
 dis.CtlID = (UINT)GetWindowLongPtrW(infoPtr->hwndSelf, GWLP_ID);
 dis.itemID = item.iItem;
 dis.itemAction = ODA_FOCUS;
 if (fShow) dis.itemState |= ODS_FOCUS;
 dis.hwndItem = infoPtr->hwndSelf;
 dis.hDC = hdc;
 LISTVIEW_GetItemBox(infoPtr, dis.itemID, &dis.rcItem);
 dis.itemData = item.lParam;

 SendMessageW(infoPtr->hwndNotify, WM_DRAWITEM, dis.CtlID, (LPARAM)&dis);

 SelectObject(hdc, hOldFont);
    }
    else
        LISTVIEW_InvalidateItem(infoPtr, infoPtr->nFocusedItem);

done:
    ReleaseDC(infoPtr->hwndSelf, hdc);
}
