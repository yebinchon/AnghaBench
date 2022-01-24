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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_signal_interrupt_handler ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret = 0;
	struct sigaction sa;
	sigset_t sigset;

	ret = FUNC3(&sigset);
	if (ret < 0) {
		FUNC0("sigemptyset");
		return ret;
	}

	sa.sa_handler = test_signal_interrupt_handler;
	sa.sa_mask = sigset;
	sa.sa_flags = 0;
	ret = FUNC2(SIGUSR1, &sa, NULL);
	if (ret < 0) {
		FUNC0("sigaction");
		return ret;
	}

	FUNC1("Signal handler set for SIGUSR1\n");

	return ret;
}