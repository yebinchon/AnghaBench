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
typedef  int UINT ;
struct TYPE_10__ {TYPE_2__* items; scalar_t__ uNumItem; } ;
struct TYPE_9__ {int /*<<< orphan*/  pszText; int /*<<< orphan*/  iOrder; int /*<<< orphan*/  iImage; int /*<<< orphan*/  lParam; int /*<<< orphan*/  cxy; int /*<<< orphan*/  fmt; int /*<<< orphan*/  hbm; } ;
struct TYPE_8__ {int mask; int /*<<< orphan*/  cchTextMax; scalar_t__ pszText; int /*<<< orphan*/  iOrder; int /*<<< orphan*/  iImage; int /*<<< orphan*/  lParam; int /*<<< orphan*/  cxy; int /*<<< orphan*/  fmt; int /*<<< orphan*/  hbm; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  TYPE_1__* LPHDITEMW ;
typedef  size_t INT ;
typedef  TYPE_2__ HEADER_ITEM ;
typedef  TYPE_3__ HEADER_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HDI_BITMAP ; 
 int HDI_COMCTL32_4_0_FIELDS ; 
 int HDI_FORMAT ; 
 int HDI_IMAGE ; 
 int HDI_LPARAM ; 
 int HDI_ORDER ; 
 int HDI_TEXT ; 
 int HDI_UNKNOWN_FIELDS ; 
 int HDI_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC5 (const HEADER_INFO *infoPtr, INT nItem, LPHDITEMW phdi, BOOL bUnicode)
{
    HEADER_ITEM *lpItem;
    UINT mask;

    if (!phdi)
	return FALSE;

    FUNC4("[nItem=%d]\n", nItem);

    mask = phdi->mask;
    if (mask == 0)
	return TRUE;

    if ((nItem < 0) || (nItem >= (INT)infoPtr->uNumItem))
        return FALSE;

    if (mask & HDI_UNKNOWN_FIELDS)
    {
        FUNC4("mask %x contains unknown fields. Using only comctl32 4.0 fields\n", mask);
        mask &= HDI_COMCTL32_4_0_FIELDS;
    }
    
    lpItem = &infoPtr->items[nItem];
    FUNC1(infoPtr, nItem, mask);

    if (mask & HDI_BITMAP)
        phdi->hbm = lpItem->hbm;

    if (mask & HDI_FORMAT)
        phdi->fmt = lpItem->fmt;

    if (mask & HDI_WIDTH)
        phdi->cxy = lpItem->cxy;

    if (mask & HDI_LPARAM)
        phdi->lParam = lpItem->lParam;

    if (mask & HDI_IMAGE) 
        phdi->iImage = lpItem->iImage;

    if (mask & HDI_ORDER)
        phdi->iOrder = lpItem->iOrder;

    if (mask & HDI_TEXT)
    {
        if (bUnicode)
            FUNC2 (lpItem->pszText, phdi->pszText, phdi->cchTextMax);
        else
            FUNC3 (lpItem->pszText, (LPSTR)phdi->pszText, phdi->cchTextMax);
    }

    FUNC0(lpItem);
    return TRUE;
}