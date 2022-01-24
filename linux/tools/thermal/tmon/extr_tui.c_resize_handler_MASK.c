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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maxx ; 
 int /*<<< orphan*/  maxy ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void (*) (int)) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(int sig)
{
	/* start over when term gets resized, but first we clean up */
	FUNC1();
	FUNC2();
	FUNC4();
	FUNC0();
	FUNC3(stdscr, maxy, maxx);  /* get the new screen size */
	FUNC5();
	/* rate limit */
	FUNC7(1);
	FUNC8(LOG_DEBUG, "SIG %d, term resized to %d x %d\n",
		sig, maxy, maxx);
	FUNC6(SIGWINCH, resize_handler);
}