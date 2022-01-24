#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t uNumItem; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/ * hFont; TYPE_2__* items; int /*<<< orphan*/  bRectsValid; } ;
struct TYPE_8__ {int right; int bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_9__ {TYPE_1__ rect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int LRESULT ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  TYPE_2__ HEADER_ITEM ;
typedef  TYPE_3__ HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  CDDS_POSTPAINT ; 
 int /*<<< orphan*/  CDDS_PREPAINT ; 
 int CDRF_NOTIFYPOSTPAINT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  ILC_COLORDDB ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSTEM_FONT ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HIMAGELIST
FUNC15 (HEADER_INFO *infoPtr, INT iItem)
{
    HEADER_ITEM *lpItem;
    HIMAGELIST himl;
    HBITMAP hMemory, hOldBitmap;
    LRESULT lCDFlags;
    RECT rc;
    HDC hMemoryDC;
    HDC hDeviceDC;
    int height, width;
    HFONT hFont;
    
    if (iItem >= infoPtr->uNumItem)
        return NULL;

    if (!infoPtr->bRectsValid)
        FUNC9(infoPtr);

    lpItem = &infoPtr->items[iItem];
    width = lpItem->rect.right - lpItem->rect.left;
    height = lpItem->rect.bottom - lpItem->rect.top;
    
    hDeviceDC = FUNC5(NULL);
    hMemoryDC = FUNC1(hDeviceDC);
    hMemory = FUNC0(hDeviceDC, width, height);
    FUNC12(NULL, hDeviceDC);
    hOldBitmap = FUNC13(hMemoryDC, hMemory);
    FUNC14(hMemoryDC, -lpItem->rect.left, -lpItem->rect.top, NULL);
    hFont = infoPtr->hFont ? infoPtr->hFont : FUNC6(SYSTEM_FONT);
    FUNC13(hMemoryDC, hFont);

    FUNC4(infoPtr->hwndSelf, &rc);
    lCDFlags = FUNC8(infoPtr, CDDS_PREPAINT, hMemoryDC, &rc);
    FUNC7(infoPtr, hMemoryDC, iItem, FALSE, lCDFlags);
    if (lCDFlags & CDRF_NOTIFYPOSTPAINT)
        FUNC8(infoPtr, CDDS_POSTPAINT, hMemoryDC, &rc);
    
    hMemory = FUNC13(hMemoryDC, hOldBitmap);
    FUNC2(hMemoryDC);
    
    if (hMemory == NULL)    /* if anything failed */
        return NULL;

    himl = FUNC11(width, height, ILC_COLORDDB, 1, 1);
    FUNC10(himl, hMemory, NULL);
    FUNC3(hMemory);
    return himl;
}