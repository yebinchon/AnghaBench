#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; int lPos; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NM_RELEASEDCAPTURE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int TB_AUTO_PAGE ; 
 int TB_DRAG_MODE ; 
 int TB_ENDTRACK ; 
 int /*<<< orphan*/  TB_REFRESH_TIMER ; 
 int TB_THUMBPOSITION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static LRESULT
FUNC6 (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->flags & TB_DRAG_MODE) {
        FUNC5 (infoPtr, TB_THUMBPOSITION | (infoPtr->lPos<<16));
        FUNC5 (infoPtr, TB_ENDTRACK);
        infoPtr->flags &= ~TB_DRAG_MODE;
        FUNC1 ();
	FUNC4(infoPtr, NM_RELEASEDCAPTURE);
        FUNC2(infoPtr, FALSE);
	FUNC3(infoPtr, infoPtr->lPos);
    }
    if (infoPtr->flags & TB_AUTO_PAGE) {
	FUNC0 (infoPtr->hwndSelf, TB_REFRESH_TIMER);
        infoPtr->flags &= ~TB_AUTO_PAGE;
        FUNC5 (infoPtr, TB_ENDTRACK);
        FUNC1 ();
	FUNC4(infoPtr, NM_RELEASEDCAPTURE);
    }

    return 0;
}