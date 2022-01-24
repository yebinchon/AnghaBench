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
struct TYPE_7__ {scalar_t__ hwndSelf; int region_posx; int region_posy; int flags; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  selection_start; int /*<<< orphan*/  bCaptureState; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int EF_AFTER_WRAP ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static LRESULT FUNC5(EDITSTATE *es, INT x, INT y)
{
	INT e;
	BOOL after_wrap;
	INT prex, prey;

        /* If the mouse has been captured by process other than the edit control itself,
         * the windows edit controls will not select the strings with mouse move.
         */
        if (!es->bCaptureState || FUNC4() != es->hwndSelf)
		return 0;

	/*
	 *	FIXME: gotta do some scrolling if outside client
	 *		area.  Maybe reset the timer ?
	 */
	prex = x; prey = y;
	FUNC1(es, &x, &y);
	es->region_posx = (prex < x) ? -1 : ((prex > x) ? 1 : 0);
	es->region_posy = (prey < y) ? -1 : ((prey > y) ? 1 : 0);
	e = FUNC0(es, x, y, &after_wrap);
	FUNC2(es, es->selection_start, e, after_wrap);
	FUNC3(es,es->selection_end,es->flags & EF_AFTER_WRAP);
	return 0;
}