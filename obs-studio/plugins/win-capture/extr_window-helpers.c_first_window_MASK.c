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
typedef  enum window_search_mode { ____Placeholder_window_search_mode } window_search_mode ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static HWND FUNC7(enum window_search_mode mode, HWND *parent,
			 bool *use_findwindowex)
{
	HWND window = FUNC0(FUNC1(), NULL, NULL, NULL);

	if (!window) {
		*use_findwindowex = false;
		window = FUNC2(FUNC1(), GW_CHILD);
	} else {
		*use_findwindowex = true;
	}

	*parent = NULL;

	if (!FUNC3(window, mode)) {
		window = FUNC6(window, mode, parent, *use_findwindowex);

		if (!window && *use_findwindowex) {
			*use_findwindowex = false;

			window = FUNC2(FUNC1(), GW_CHILD);
			if (!FUNC3(window, mode))
				window = FUNC6(window, mode, parent,
						     *use_findwindowex);
		}
	}

	if (FUNC5(window)) {
		HWND child = FUNC4(window);
		if (child) {
			*parent = window;
			return child;
		}
	}

	return window;
}