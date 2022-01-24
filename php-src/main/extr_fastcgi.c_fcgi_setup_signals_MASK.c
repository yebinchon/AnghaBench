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
struct sigaction {scalar_t__ sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ fcgi_signal_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct sigaction new_sa, old_sa;

	FUNC1(&new_sa.sa_mask);
	new_sa.sa_flags = 0;
	new_sa.sa_handler = fcgi_signal_handler;
	FUNC0(SIGUSR1, &new_sa, NULL);
	FUNC0(SIGTERM, &new_sa, NULL);
	FUNC0(SIGPIPE, NULL, &old_sa);
	if (old_sa.sa_handler == SIG_DFL) {
		FUNC0(SIGPIPE, &new_sa, NULL);
	}
}