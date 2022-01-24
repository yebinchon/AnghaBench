#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int SCROLLOFF ; 
 int cur ; 
 int curscroll ; 
 int ndents ; 
 int xlines ; 

__attribute__((used)) static void FUNC2(int target, int ignore_scrolloff)
{
	int delta, scrolloff, onscreen = xlines - 4;

	target = FUNC0(0, FUNC1(ndents - 1, target));
	delta = target - cur;
	cur = target;
	if (!ignore_scrolloff) {
		scrolloff = FUNC1(SCROLLOFF, onscreen >> 1);
		/*
		 * When ignore_scrolloff is 1, the cursor can jump into the scrolloff
		 * margin area, but when ignore_scrolloff is 0, act like a boa
		 * constrictor and squeeze the cursor towards the middle region of the
		 * screen by allowing it to move inward and disallowing it to move
		 * outward (deeper into the scrolloff margin area).
		 */
		if (((cur < (curscroll + scrolloff)) && delta < 0)
		    || ((cur > (curscroll + onscreen - scrolloff - 1)) && delta > 0))
			curscroll += delta;
	}
	curscroll = FUNC1(curscroll, FUNC1(cur, ndents - onscreen));
	curscroll = FUNC0(curscroll, FUNC0(cur - (onscreen - 1), 0));
}