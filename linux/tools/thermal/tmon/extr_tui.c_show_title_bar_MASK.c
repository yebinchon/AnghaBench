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
 int /*<<< orphan*/  A_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_COLOR_HEADER_BAR ; 
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * status_bar_slots ; 
 int /*<<< orphan*/  status_bar_window ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  title_bar_window ; 
 scalar_t__ tui_disabled ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	int i;
	int x = 0;

	if (tui_disabled || !title_bar_window)
		return;

	FUNC5(title_bar_window, FUNC0(PT_COLOR_HEADER_BAR));
	FUNC6(title_bar_window, FUNC0(PT_COLOR_HEADER_BAR));
	FUNC7(title_bar_window);

	FUNC1(title_bar_window, 0, 0,
		"     TMON v%s", VERSION);

	FUNC8(title_bar_window);

	FUNC7(status_bar_window);

	for (i = 0; i < 10; i++) {
		if (FUNC2(status_bar_slots[i]) == 0)
			continue;
		FUNC4(status_bar_window, A_REVERSE);
		FUNC1(status_bar_window, 0, x, "%s", status_bar_slots[i]);
		FUNC3(status_bar_window, A_REVERSE);
		x += FUNC2(status_bar_slots[i]) + 1;
	}
	FUNC8(status_bar_window);
}