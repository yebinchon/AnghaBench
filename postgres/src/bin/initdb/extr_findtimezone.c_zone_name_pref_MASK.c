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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *zonename)
{
	/*
	 * Prefer UTC over alternatives such as UCT.  Also prefer Etc/UTC over
	 * Etc/UCT; but UTC is preferred to Etc/UTC.
	 */
	if (FUNC0(zonename, "UTC") == 0)
		return 50;
	if (FUNC0(zonename, "Etc/UTC") == 0)
		return 40;

	/*
	 * We don't want to pick "localtime" or "posixrules", unless we can find
	 * no other name for the prevailing zone.  Those aren't real zone names.
	 */
	if (FUNC0(zonename, "localtime") == 0 ||
		FUNC0(zonename, "posixrules") == 0)
		return -50;

	return 0;
}