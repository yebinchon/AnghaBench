#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int width; int height; int style; int item_height; int /*<<< orphan*/  self; int /*<<< orphan*/  focus_item; } ;
struct TYPE_11__ {int right; int left; int bottom; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ LB_DESCR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int LBS_NOINTEGRALHEIGHT ; 
 int LBS_OWNERDRAWVARIABLE ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC8( LB_DESCR *descr )
{
    RECT rect;

    FUNC0( descr->self, &rect );
    descr->width  = rect.right - rect.left;
    descr->height = rect.bottom - rect.top;
    if (!(descr->style & LBS_NOINTEGRALHEIGHT) && !(descr->style & LBS_OWNERDRAWVARIABLE))
    {
        INT remaining;
        RECT rect;

        FUNC1( descr->self, &rect );
        if(descr->item_height != 0)
            remaining = descr->height % descr->item_height;
        else
            remaining = 0;
        if ((descr->height > descr->item_height) && remaining)
        {
            FUNC7("[%p]: changing height %d -> %d\n",
                  descr->self, descr->height, descr->height - remaining );
            FUNC6( descr->self, 0, 0, 0, rect.right - rect.left,
                          rect.bottom - rect.top - remaining,
                          SWP_NOZORDER | SWP_NOACTIVATE | SWP_NOMOVE );
            return;
        }
    }
    FUNC7("[%p]: new size = %d,%d\n", descr->self, descr->width, descr->height );
    FUNC4( descr );
    FUNC5( descr );

    /* Invalidate the focused item so it will be repainted correctly */
    if (FUNC3( descr, descr->focus_item, &rect ) == 1)
    {
        FUNC2( descr->self, &rect, FALSE );
    }
}