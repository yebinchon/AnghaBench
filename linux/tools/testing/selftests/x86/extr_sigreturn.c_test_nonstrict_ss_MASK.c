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
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigusr2 ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC0(SIGUSR1);
	FUNC0(SIGTRAP);
	FUNC0(SIGSEGV);
	FUNC0(SIGILL);
	FUNC3(SIGUSR2, sigusr2, 0);

	nerrs = 0;

	FUNC1("[RUN]\tClear UC_STRICT_RESTORE_SS and corrupt SS\n");
	FUNC2(SIGUSR2);
	if (!nerrs)
		FUNC1("[OK]\tIt worked\n");

	return nerrs;
}