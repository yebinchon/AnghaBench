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
 int /*<<< orphan*/  FAST_MODE ; 
 int /*<<< orphan*/  IMMEDIATE_MODE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SMART_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  shutdown_mode ; 
 int /*<<< orphan*/  sig ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(char *modeopt)
{
	if (FUNC3(modeopt, "s") == 0 || FUNC3(modeopt, "smart") == 0)
	{
		shutdown_mode = SMART_MODE;
		sig = SIGTERM;
	}
	else if (FUNC3(modeopt, "f") == 0 || FUNC3(modeopt, "fast") == 0)
	{
		shutdown_mode = FAST_MODE;
		sig = SIGINT;
	}
	else if (FUNC3(modeopt, "i") == 0 || FUNC3(modeopt, "immediate") == 0)
	{
		shutdown_mode = IMMEDIATE_MODE;
		sig = SIGQUIT;
	}
	else
	{
		FUNC4(FUNC0("%s: unrecognized shutdown mode \"%s\"\n"), progname, modeopt);
		FUNC1();
		FUNC2(1);
	}
}