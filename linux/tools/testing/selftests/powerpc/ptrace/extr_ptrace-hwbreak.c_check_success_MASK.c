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
 scalar_t__ SIGTRAP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void FUNC4(const char *msg)
{
	const char *msg2;
	int status;

	/* Wait for the child to SIGTRAP */
	FUNC3(&status);

	msg2 = "Failed";

	if (FUNC0(status) && FUNC1(status) == SIGTRAP) {
		msg2 = "Child process hit the breakpoint";
	}

	FUNC2("%s Result: [%s]\n", msg, msg2);
}