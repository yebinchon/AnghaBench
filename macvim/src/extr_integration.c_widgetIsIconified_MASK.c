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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  Widget ;
typedef  int /*<<< orphan*/  Boolean ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int /*<<< orphan*/  AnyPropertyType ; 
 int /*<<< orphan*/  False ; 
 int IconicState ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Boolean
FUNC5(
	Widget		 w)
{
	Atom		 wm_state;
	Atom		 act_type;		/* actual Atom type returned */
	int		 act_fmt;		/* actual format returned */
	u_long		 nitems_ret;		/* number of items returned */
	u_long		 bytes_after;		/* number of bytes remaining */
	u_long		*property;		/* actual property returned */

	/*
	 * If a window is iconified its WM_STATE is set to IconicState. See
	 * ICCCM Version 2.0, section 4.1.3.1 for more details.
	 */

	wm_state = FUNC2(FUNC3(w), FUNC0("WM_STATE"), False);
	if (FUNC4(w) != 0) {			/* only check if window exists! */
		FUNC1(FUNC3(w), FUNC4(w), wm_state, 0L, 2L,
		    False, AnyPropertyType, &act_type, &act_fmt, &nitems_ret,
		    &bytes_after, (u_char **) &property);
		if (nitems_ret == 2 && property[0] == IconicState) {
			return True;
		}
	}

	return False;

}