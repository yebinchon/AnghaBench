#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_18__ {scalar_t__ uNumItem; int iHotItem; int dwStyle; int iHotDivider; scalar_t__ bDragging; TYPE_1__* items; scalar_t__ hFont; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  bRectsValid; } ;
struct TYPE_17__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_16__ {TYPE_2__ rect; } ;
typedef  TYPE_2__ RECT ;
typedef  int LRESULT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/ * HTHEME ;
typedef  scalar_t__ HFONT ;
typedef  TYPE_3__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 int BF_BOTTOM ; 
 int BF_LEFT ; 
 int BF_MIDDLE ; 
 int BF_SOFT ; 
 int BF_TOP ; 
 int /*<<< orphan*/  CDDS_POSTPAINT ; 
 int /*<<< orphan*/  CDDS_PREPAINT ; 
 int CDRF_NOTIFYPOSTPAINT ; 
 int /*<<< orphan*/  COLOR_3DFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EDGE_ETCHED ; 
 int /*<<< orphan*/  EDGE_RAISED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int HDS_BUTTONS ; 
 int HDS_FLAT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC9 (TYPE_3__*,scalar_t__) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  HIS_NORMAL ; 
 int /*<<< orphan*/  HP_HEADERITEM ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  SYSTEM_FONT ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void
FUNC15 (HEADER_INFO *infoPtr, HDC hdc)
{
    HFONT hFont, hOldFont;
    RECT rect, rcRest;
    HBRUSH hbrBk;
    UINT i;
    INT x;
    LRESULT lCDFlags;
    HTHEME theme = FUNC6 (infoPtr->hwndSelf);

    if (!infoPtr->bRectsValid)
        FUNC11(infoPtr);

    /* get rect for the bar, adjusted for the border */
    FUNC3 (infoPtr->hwndSelf, &rect);
    lCDFlags = FUNC10(infoPtr, CDDS_PREPAINT, hdc, &rect);
    
    if (infoPtr->bDragging)
	FUNC12(FALSE);

    hFont = infoPtr->hFont ? infoPtr->hFont : FUNC4 (SYSTEM_FONT);
    hOldFont = FUNC14 (hdc, hFont);

    /* draw Background */
    if (infoPtr->uNumItem == 0 && theme == NULL) {
        hbrBk = FUNC5(COLOR_3DFACE);
        FUNC2(hdc, &rect, hbrBk);
    }

    x = rect.left;
    for (i = 0; x <= rect.right && i < infoPtr->uNumItem; i++) {
        int idx = FUNC9(infoPtr,i);
        if (FUNC13(hdc, &infoPtr->items[idx].rect))
            FUNC8(infoPtr, hdc, idx, infoPtr->iHotItem == idx, lCDFlags);
        x = infoPtr->items[idx].rect.right;
    }

    rcRest = rect;
    rcRest.left = x;
    if ((x <= rect.right) && FUNC13(hdc, &rcRest) && (infoPtr->uNumItem > 0)) {
        if (theme != NULL) {
            FUNC1(theme, hdc, HP_HEADERITEM, HIS_NORMAL, &rcRest, NULL);
        }
        else if (infoPtr->dwStyle & HDS_FLAT) {
            hbrBk = FUNC5(COLOR_3DFACE);
            FUNC2(hdc, &rcRest, hbrBk);
        }
        else
        {
            if (infoPtr->dwStyle & HDS_BUTTONS)
                FUNC0 (hdc, &rcRest, EDGE_RAISED, BF_TOP|BF_LEFT|BF_BOTTOM|BF_SOFT|BF_MIDDLE);
            else
                FUNC0 (hdc, &rcRest, EDGE_ETCHED, BF_BOTTOM|BF_MIDDLE);
        }
    }

    if (infoPtr->iHotDivider != -1)
        FUNC7(infoPtr, hdc);

    if (infoPtr->bDragging)
	FUNC12(TRUE);
    FUNC14 (hdc, hOldFont);
    
    if (lCDFlags & CDRF_NOTIFYPOSTPAINT)
        FUNC10(infoPtr, CDDS_POSTPAINT, hdc, &rect);
}