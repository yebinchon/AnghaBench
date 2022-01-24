#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int style; int page_size; int top_item; int column_width; int item_height; int /*<<< orphan*/  self; TYPE_1__* items; } ;
struct TYPE_6__ {scalar_t__ height; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_2__ LB_DESCR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LBS_MULTICOLUMN ; 
 int LBS_OWNERDRAWVARIABLE ; 
 int /*<<< orphan*/  LB_OKAY ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int SW_ERASE ; 
 int SW_INVALIDATE ; 
 int SW_SCROLLCHILDREN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC5( LB_DESCR *descr, INT index, BOOL scroll )
{
    INT max = FUNC1( descr );

    FUNC4("setting top item %d, scroll %d\n", index, scroll);

    if (index > max) index = max;
    if (index < 0) index = 0;
    if (descr->style & LBS_MULTICOLUMN) index -= index % descr->page_size;
    if (descr->top_item == index) return LB_OKAY;
    if (scroll)
    {
        INT diff;
        if (descr->style & LBS_MULTICOLUMN)
            diff = (descr->top_item - index) / descr->page_size * descr->column_width;
        else if (descr->style & LBS_OWNERDRAWVARIABLE)
        {
            INT i;
            diff = 0;
            if (index > descr->top_item)
            {
                for (i = index - 1; i >= descr->top_item; i--)
                    diff -= descr->items[i].height;
            }
            else
            {
                for (i = index; i < descr->top_item; i++)
                    diff += descr->items[i].height;
            }
        }
        else
            diff = (descr->top_item - index) * descr->item_height;

        FUNC3( descr->self, 0, diff, NULL, NULL, 0, NULL,
                        SW_INVALIDATE | SW_ERASE | SW_SCROLLCHILDREN );
    }
    else
        FUNC0( descr->self, NULL, TRUE );
    descr->top_item = index;
    FUNC2( descr );
    return LB_OKAY;
}