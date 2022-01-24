#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dis ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_17__ {scalar_t__ itemID; scalar_t__ CtlID; int /*<<< orphan*/  itemData; TYPE_1__ rcItem; int /*<<< orphan*/  hDC; int /*<<< orphan*/  hwndItem; int /*<<< orphan*/  itemState; int /*<<< orphan*/  itemAction; int /*<<< orphan*/  CtlType; } ;
struct TYPE_16__ {scalar_t__ nFocusedItem; scalar_t__ uView; scalar_t__ nItemHeight; int dwStyle; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  hwndNotify; scalar_t__ hDefaultFont; scalar_t__ hFont; } ;
struct TYPE_15__ {scalar_t__ iItem; int /*<<< orphan*/  lParam; int /*<<< orphan*/  mask; scalar_t__ iSubItem; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ LVITEMW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_3__ LISTVIEW_INFO ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ DRAWITEMSTRUCT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  LVIF_PARAM ; 
 int LVS_OWNERDRAWFIXED ; 
 scalar_t__ LV_VIEW_DETAILS ; 
 scalar_t__ LV_VIEW_ICON ; 
 int /*<<< orphan*/  ODA_FOCUS ; 
 int /*<<< orphan*/  ODS_FOCUS ; 
 int /*<<< orphan*/  ODT_LISTVIEW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  WM_DRAWITEM ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 

__attribute__((used)) static void FUNC11(const LISTVIEW_INFO *infoPtr, BOOL fShow)
{
    HDC hdc;

    FUNC9("fShow=%d, nItem=%d\n", fShow, infoPtr->nFocusedItem);

    if (infoPtr->nFocusedItem < 0) return;

    /* we need some gymnastics in ICON mode to handle large items */
    if (infoPtr->uView == LV_VIEW_ICON)
    {
	RECT rcBox;

	FUNC2(infoPtr, infoPtr->nFocusedItem, &rcBox); 
	if ((rcBox.bottom - rcBox.top) > infoPtr->nItemHeight)
	{
	    FUNC5(infoPtr, &rcBox);
	    return;
	}
    }

    if (!(hdc = FUNC0(infoPtr->hwndSelf))) return;

    /* for some reason, owner draw should work only in report mode */
    if ((infoPtr->dwStyle & LVS_OWNERDRAWFIXED) && (infoPtr->uView == LV_VIEW_DETAILS))
    {
	DRAWITEMSTRUCT dis;
	LVITEMW item;

	HFONT hFont = infoPtr->hFont ? infoPtr->hFont : infoPtr->hDefaultFont;
	HFONT hOldFont = FUNC7(hdc, hFont);

        item.iItem = infoPtr->nFocusedItem;
	item.iSubItem = 0;
        item.mask = LVIF_PARAM;
	if (!FUNC3(infoPtr, &item)) goto done;
	   
	FUNC10(&dis, sizeof(dis)); 
	dis.CtlType = ODT_LISTVIEW;
	dis.CtlID = (UINT)FUNC1(infoPtr->hwndSelf, GWLP_ID);
	dis.itemID = item.iItem;
	dis.itemAction = ODA_FOCUS;
	if (fShow) dis.itemState |= ODS_FOCUS;
	dis.hwndItem = infoPtr->hwndSelf;
	dis.hDC = hdc;
	FUNC2(infoPtr, dis.itemID, &dis.rcItem);
	dis.itemData = item.lParam;

	FUNC8(infoPtr->hwndNotify, WM_DRAWITEM, dis.CtlID, (LPARAM)&dis);

	FUNC7(hdc, hOldFont);
    }
    else
        FUNC4(infoPtr, infoPtr->nFocusedItem);

done:
    FUNC6(infoPtr->hwndSelf, hdc);
}