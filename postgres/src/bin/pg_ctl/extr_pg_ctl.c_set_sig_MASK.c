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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  sig ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(char *signame)
{
	if (FUNC3(signame, "HUP") == 0)
		sig = SIGHUP;
	else if (FUNC3(signame, "INT") == 0)
		sig = SIGINT;
	else if (FUNC3(signame, "QUIT") == 0)
		sig = SIGQUIT;
	else if (FUNC3(signame, "ABRT") == 0)
		sig = SIGABRT;
	else if (FUNC3(signame, "KILL") == 0)
		sig = SIGKILL;
	else if (FUNC3(signame, "TERM") == 0)
		sig = SIGTERM;
	else if (FUNC3(signame, "USR1") == 0)
		sig = SIGUSR1;
	else if (FUNC3(signame, "USR2") == 0)
		sig = SIGUSR2;
	else
	{
		FUNC4(FUNC0("%s: unrecognized signal name \"%s\"\n"), progname, signame);
		FUNC1();
		FUNC2(1);
	}
}