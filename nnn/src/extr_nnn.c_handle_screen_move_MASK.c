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
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
#define  SEL_CTRL_D 134 
#define  SEL_CTRL_U 133 
#define  SEL_HOME 132 
#define  SEL_NEXT 131 
#define  SEL_PGDN 130 
#define  SEL_PGUP 129 
#define  SEL_PREV 128 
 int cur ; 
 int curscroll ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int ndents ; 
 int /*<<< orphan*/  xlines ; 

__attribute__((used)) static void FUNC1(enum action sel)
{
	int onscreen;

	switch (sel) {
	case SEL_NEXT:
		if (ndents)
			FUNC0((cur + 1) % ndents, 0);
		break;
	case SEL_PREV:
		if (ndents)
			FUNC0((cur + ndents - 1) % ndents, 0);
		break;
	case SEL_PGDN:
		onscreen = xlines - 4;
		FUNC0(curscroll + (onscreen - 1), 1);
		curscroll += onscreen - 1;
		break;
	case SEL_CTRL_D:
		onscreen = xlines - 4;
		FUNC0(curscroll + (onscreen - 1), 1);
		curscroll += onscreen >> 1;
		break;
	case SEL_PGUP: // fallthrough
		onscreen = xlines - 4;
		FUNC0(curscroll, 1);
		curscroll -= onscreen - 1;
		break;
	case SEL_CTRL_U:
		onscreen = xlines - 4;
		FUNC0(curscroll, 1);
		curscroll -= onscreen >> 1;
		break;
	case SEL_HOME:
		FUNC0(0, 1);
		break;
	default: /* case SEL_END: */
		FUNC0(ndents - 1, 1);
		break;
	}
}