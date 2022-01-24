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
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  segv_handler ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct sigaction sa;

	sa.sa_flags = SA_SIGINFO;
	sa.sa_sigaction = segv_handler;

	if (FUNC2(SIGSEGV, &sa, NULL) == -1) {
		FUNC1("sigaction");
		FUNC0(EXIT_FAILURE);
	}
}