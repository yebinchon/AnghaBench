#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_24__ {int nSpecial; int /*<<< orphan*/  nItem; scalar_t__ ranges; TYPE_5__ range; } ;
struct TYPE_23__ {scalar_t__ uView; scalar_t__ nItemHeight; scalar_t__ nItemWidth; } ;
struct TYPE_22__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_21__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__ LISTVIEW_INFO ;
typedef  TYPE_4__ ITERATOR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,TYPE_2__*) ; 
 scalar_t__ LV_VIEW_DETAILS ; 
 scalar_t__ NULLREGION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__ const*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_5__) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC13(ITERATOR *i, const LISTVIEW_INFO *infoPtr, HDC  hdc)
{
    POINT Origin, Position;
    RECT rcItem, rcClip;
    INT rgntype;
    
    rgntype = FUNC0(hdc, &rcClip);
    if (rgntype == NULLREGION)
    {
        FUNC6(i);
        return TRUE;
    }
    if (!FUNC7(i, infoPtr, &rcClip)) return FALSE;
    if (rgntype == SIMPLEREGION) return TRUE;

    /* first deal with the special item */
    if (i->nSpecial != -1)
    {
	FUNC1(infoPtr, i->nSpecial, &rcItem);
	if (!FUNC4(hdc, &rcItem)) i->nSpecial = -1;
    }
    
    /* if we can't deal with the region, we'll just go with the simple range */
    FUNC3(infoPtr, &Origin);
    FUNC5("building visible range:\n");
    if (!i->ranges && i->range.lower < i->range.upper)
    {
	if (!(i->ranges = FUNC10(50))) return TRUE;
	if (!FUNC9(i->ranges, i->range))
        {
	    FUNC12(i->ranges);
	    i->ranges = 0;
	    return TRUE;
        }
    }

    /* now delete the invisible items from the list */
    while(FUNC8(i))
    {
	FUNC2(infoPtr, i->nItem, &Position);
	rcItem.left = (infoPtr->uView == LV_VIEW_DETAILS) ? Origin.x : Position.x + Origin.x;
	rcItem.top = Position.y + Origin.y;
	rcItem.right = rcItem.left + infoPtr->nItemWidth;
	rcItem.bottom = rcItem.top + infoPtr->nItemHeight;
	if (!FUNC4(hdc, &rcItem))
	    FUNC11(i->ranges, i->nItem);
    }
    /* the iterator should restart on the next iterator_next */
    FUNC5("done\n");
    
    return TRUE;
}