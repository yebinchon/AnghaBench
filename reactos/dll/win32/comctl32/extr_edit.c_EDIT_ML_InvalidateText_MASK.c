#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ y_offset; int /*<<< orphan*/  format_rect; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(EDITSTATE *es, INT start, INT end)
{
	INT vlc = FUNC7(es);
	INT sl = FUNC0(es, start);
	INT el = FUNC0(es, end);
	INT sc;
	INT ec;
	RECT rc1;
	RECT rcWnd;
	RECT rcLine;
	RECT rcUpdate;
	INT l;

	if ((el < es->y_offset) || (sl > es->y_offset + vlc))
		return;

	sc = start - FUNC1(es, sl);
	ec = end - FUNC1(es, el);
	if (sl < es->y_offset) {
		sl = es->y_offset;
		sc = 0;
	}
	if (el > es->y_offset + vlc) {
		el = es->y_offset + vlc;
		ec = FUNC2(es, FUNC1(es, el));
	}
	FUNC5(es->hwndSelf, &rc1);
	FUNC6(&rcWnd, &rc1, &es->format_rect);
	if (sl == el) {
		FUNC3(es, sl, sc, ec, &rcLine);
		if (FUNC6(&rcUpdate, &rcWnd, &rcLine))
			FUNC4(es, &rcUpdate, TRUE);
	} else {
		FUNC3(es, sl, sc,
				FUNC2(es,
					FUNC1(es, sl)),
				&rcLine);
		if (FUNC6(&rcUpdate, &rcWnd, &rcLine))
			FUNC4(es, &rcUpdate, TRUE);
		for (l = sl + 1 ; l < el ; l++) {
			FUNC3(es, l, 0,
				FUNC2(es,
					FUNC1(es, l)),
				&rcLine);
			if (FUNC6(&rcUpdate, &rcWnd, &rcLine))
				FUNC4(es, &rcUpdate, TRUE);
		}
		FUNC3(es, el, 0, ec, &rcLine);
		if (FUNC6(&rcUpdate, &rcWnd, &rcLine))
			FUNC4(es, &rcUpdate, TRUE);
	}
}