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
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  COLOR_BLUE ; 
 int /*<<< orphan*/  COLOR_GREEN ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_WHITE ; 
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  PT_COLOR_BLUE ; 
 int /*<<< orphan*/  PT_COLOR_BRIGHT ; 
 int /*<<< orphan*/  PT_COLOR_DEFAULT ; 
 int /*<<< orphan*/  PT_COLOR_ERROR ; 
 int /*<<< orphan*/  PT_COLOR_GREEN ; 
 int /*<<< orphan*/  PT_COLOR_HEADER_BAR ; 
 int /*<<< orphan*/  PT_COLOR_RED ; 
 int /*<<< orphan*/  PT_COLOR_YELLOW ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdscr ; 
 scalar_t__ tui_disabled ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	if (tui_disabled)
		return;

	FUNC3();
	FUNC7();
	FUNC4(stdscr, TRUE);	/* enable keyboard mapping */
	FUNC6();			/* tell curses not to do NL->CR/NL on output */
	FUNC0();		/* take input chars one at a time */
	FUNC5();		/* dont echo input */
	FUNC1(0);		/* turn off cursor */
	FUNC8();

	FUNC2(PT_COLOR_DEFAULT, COLOR_WHITE, COLOR_BLACK);
	FUNC2(PT_COLOR_HEADER_BAR, COLOR_BLACK, COLOR_WHITE);
	FUNC2(PT_COLOR_ERROR, COLOR_BLACK, COLOR_RED);
	FUNC2(PT_COLOR_RED, COLOR_WHITE, COLOR_RED);
	FUNC2(PT_COLOR_YELLOW, COLOR_WHITE, COLOR_YELLOW);
	FUNC2(PT_COLOR_GREEN, COLOR_WHITE, COLOR_GREEN);
	FUNC2(PT_COLOR_BLUE, COLOR_WHITE, COLOR_BLUE);
	FUNC2(PT_COLOR_BRIGHT, COLOR_WHITE, COLOR_BLACK);

}