#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
typedef  int UINT ;
struct TYPE_13__ {size_t uNumItem; size_t iHotDivider; int /*<<< orphan*/  hwndSelf; TYPE_3__* items; } ;
struct TYPE_10__ {int left; int right; } ;
struct TYPE_12__ {TYPE_1__ rect; } ;
struct TYPE_11__ {size_t x; scalar_t__ y; } ;
typedef  scalar_t__ SHORT ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ POINT ;
typedef  size_t LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  size_t INT ;
typedef  TYPE_3__ HEADER_ITEM ;
typedef  TYPE_4__ HEADER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*,int*,size_t*) ; 
 size_t FUNC2 (TYPE_4__*,size_t) ; 
 int HHT_NOWHERE ; 
 int HHT_TOLEFT ; 
 int HHT_TORIGHT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static LRESULT
FUNC5(HEADER_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    INT iDivider;
    RECT r;
    
    if (wParam)
    {
        POINT pt;
        UINT flags;
        pt.x = (INT)(SHORT)FUNC4(lParam);
        pt.y = 0;
        FUNC1 (infoPtr, &pt, &flags, &iDivider);
        
        if (flags & HHT_TOLEFT)
            iDivider = 0;
        else if (flags & HHT_NOWHERE || flags & HHT_TORIGHT)
            iDivider = infoPtr->uNumItem;
        else
        {
            HEADER_ITEM *lpItem = &infoPtr->items[iDivider];
            if (pt.x > (lpItem->rect.left+lpItem->rect.right)/2)
                iDivider = FUNC2(infoPtr, iDivider);
        }
    }
    else
        iDivider = (INT)lParam;
        
    /* Note; wParam==FALSE, lParam==-1 is valid and is used to clear the hot divider */
    if (iDivider<-1 || iDivider>(int)infoPtr->uNumItem)
        return iDivider;

    if (iDivider != infoPtr->iHotDivider)
    {
        if (infoPtr->iHotDivider != -1)
        {
            FUNC0(infoPtr, &r);
            FUNC3(infoPtr->hwndSelf, &r, FALSE);
        }
        infoPtr->iHotDivider = iDivider;
        if (iDivider != -1)
        {
            FUNC0(infoPtr, &r);
            FUNC3(infoPtr->hwndSelf, &r, FALSE);
        }
    }
    return iDivider;
}