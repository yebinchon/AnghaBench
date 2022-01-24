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
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HWND FUNC6(HWND window, enum window_search_mode mode, HWND *parent,
			bool use_findwindowex)
{
	if (*parent) {
		window = *parent;
		*parent = NULL;
	}

	while (true) {
		if (use_findwindowex)
			window = FUNC0(FUNC1(), window, NULL,
					      NULL);
		else
			window = FUNC2(window, GW_HWNDNEXT);

		if (!window || FUNC3(window, mode))
			break;
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