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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_sigaction; } ;
typedef  int /*<<< orphan*/  signal_action ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_action_handler ; 

void FUNC2(void)
{
	struct sigaction signal_action;

	FUNC0(&signal_action, 0, sizeof(signal_action));
	signal_action.sa_sigaction = signal_action_handler;
	signal_action.sa_flags = SA_SIGINFO;
	FUNC1(SIGBUS, &signal_action, NULL);
}