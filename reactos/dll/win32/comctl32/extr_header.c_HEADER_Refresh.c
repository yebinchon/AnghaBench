
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_18__ {scalar_t__ uNumItem; int iHotItem; int dwStyle; int iHotDivider; scalar_t__ bDragging; TYPE_1__* items; scalar_t__ hFont; int hwndSelf; int bRectsValid; } ;
struct TYPE_17__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_16__ {TYPE_2__ rect; } ;
typedef TYPE_2__ RECT ;
typedef int LRESULT ;
typedef scalar_t__ INT ;
typedef int * HTHEME ;
typedef scalar_t__ HFONT ;
typedef TYPE_3__ HEADER_INFO ;
typedef int HDC ;
typedef int HBRUSH ;


 int BF_BOTTOM ;
 int BF_LEFT ;
 int BF_MIDDLE ;
 int BF_SOFT ;
 int BF_TOP ;
 int CDDS_POSTPAINT ;
 int CDDS_PREPAINT ;
 int CDRF_NOTIFYPOSTPAINT ;
 int COLOR_3DFACE ;
 int DrawEdge (int ,TYPE_2__*,int ,int) ;
 int DrawThemeBackground (int *,int ,int ,int ,TYPE_2__*,int *) ;
 int EDGE_ETCHED ;
 int EDGE_RAISED ;
 int FALSE ;
 int FillRect (int ,TYPE_2__*,int ) ;
 int GetClientRect (int ,TYPE_2__*) ;
 scalar_t__ GetStockObject (int ) ;
 int GetSysColorBrush (int ) ;
 int * GetWindowTheme (int ) ;
 int HDS_BUTTONS ;
 int HDS_FLAT ;
 int HEADER_DrawHotDivider (TYPE_3__*,int ) ;
 int HEADER_DrawItem (TYPE_3__*,int ,int,int,int) ;
 int HEADER_OrderToIndex (TYPE_3__*,scalar_t__) ;
 int HEADER_SendCtrlCustomDraw (TYPE_3__*,int ,int ,TYPE_2__*) ;
 int HEADER_SetItemBounds (TYPE_3__*) ;
 int HIS_NORMAL ;
 int HP_HEADERITEM ;
 int ImageList_DragShowNolock (int ) ;
 scalar_t__ RectVisible (int ,TYPE_2__*) ;
 int SYSTEM_FONT ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static void
HEADER_Refresh (HEADER_INFO *infoPtr, HDC hdc)
{
    HFONT hFont, hOldFont;
    RECT rect, rcRest;
    HBRUSH hbrBk;
    UINT i;
    INT x;
    LRESULT lCDFlags;
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);

    if (!infoPtr->bRectsValid)
        HEADER_SetItemBounds(infoPtr);


    GetClientRect (infoPtr->hwndSelf, &rect);
    lCDFlags = HEADER_SendCtrlCustomDraw(infoPtr, CDDS_PREPAINT, hdc, &rect);

    if (infoPtr->bDragging)
 ImageList_DragShowNolock(FALSE);

    hFont = infoPtr->hFont ? infoPtr->hFont : GetStockObject (SYSTEM_FONT);
    hOldFont = SelectObject (hdc, hFont);


    if (infoPtr->uNumItem == 0 && theme == ((void*)0)) {
        hbrBk = GetSysColorBrush(COLOR_3DFACE);
        FillRect(hdc, &rect, hbrBk);
    }

    x = rect.left;
    for (i = 0; x <= rect.right && i < infoPtr->uNumItem; i++) {
        int idx = HEADER_OrderToIndex(infoPtr,i);
        if (RectVisible(hdc, &infoPtr->items[idx].rect))
            HEADER_DrawItem(infoPtr, hdc, idx, infoPtr->iHotItem == idx, lCDFlags);
        x = infoPtr->items[idx].rect.right;
    }

    rcRest = rect;
    rcRest.left = x;
    if ((x <= rect.right) && RectVisible(hdc, &rcRest) && (infoPtr->uNumItem > 0)) {
        if (theme != ((void*)0)) {
            DrawThemeBackground(theme, hdc, HP_HEADERITEM, HIS_NORMAL, &rcRest, ((void*)0));
        }
        else if (infoPtr->dwStyle & HDS_FLAT) {
            hbrBk = GetSysColorBrush(COLOR_3DFACE);
            FillRect(hdc, &rcRest, hbrBk);
        }
        else
        {
            if (infoPtr->dwStyle & HDS_BUTTONS)
                DrawEdge (hdc, &rcRest, EDGE_RAISED, BF_TOP|BF_LEFT|BF_BOTTOM|BF_SOFT|BF_MIDDLE);
            else
                DrawEdge (hdc, &rcRest, EDGE_ETCHED, BF_BOTTOM|BF_MIDDLE);
        }
    }

    if (infoPtr->iHotDivider != -1)
        HEADER_DrawHotDivider(infoPtr, hdc);

    if (infoPtr->bDragging)
 ImageList_DragShowNolock(TRUE);
    SelectObject (hdc, hOldFont);

    if (lCDFlags & CDRF_NOTIFYPOSTPAINT)
        HEADER_SendCtrlCustomDraw(infoPtr, CDDS_POSTPAINT, hdc, &rect);
}
