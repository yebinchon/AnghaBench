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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FALLBACK_PROMOTE_SIGNAL_FILE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/ * PROMOTE_SIGNAL_FILE ; 
 int /*<<< orphan*/ * PromoteTriggerFile ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ errno ; 
 int fast_promote ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct stat*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC8(void)
{
	struct stat stat_buf;
	static bool triggered = false;

	if (triggered)
		return true;

	if (FUNC0())
	{
		/*
		 * In 9.1 and 9.2 the postmaster unlinked the promote file inside the
		 * signal handler. It now leaves the file in place and lets the
		 * Startup process do the unlink. This allows Startup to know whether
		 * it should create a full checkpoint before starting up (fallback
		 * mode). Fast promotion takes precedence.
		 */
		if (FUNC5(PROMOTE_SIGNAL_FILE, &stat_buf) == 0)
		{
			FUNC7(PROMOTE_SIGNAL_FILE);
			FUNC7(FALLBACK_PROMOTE_SIGNAL_FILE);
			fast_promote = true;
		}
		else if (FUNC5(FALLBACK_PROMOTE_SIGNAL_FILE, &stat_buf) == 0)
		{
			FUNC7(FALLBACK_PROMOTE_SIGNAL_FILE);
			fast_promote = false;
		}

		FUNC2(LOG, (FUNC4("received promote request")));

		FUNC1();
		triggered = true;
		return true;
	}

	if (PromoteTriggerFile == NULL || FUNC6(PromoteTriggerFile, "") == 0)
		return false;

	if (FUNC5(PromoteTriggerFile, &stat_buf) == 0)
	{
		FUNC2(LOG,
				(FUNC4("promote trigger file found: %s", PromoteTriggerFile)));
		FUNC7(PromoteTriggerFile);
		triggered = true;
		fast_promote = true;
		return true;
	}
	else if (errno != ENOENT)
		FUNC2(ERROR,
				(FUNC3(),
				 FUNC4("could not stat promote trigger file \"%s\": %m",
						PromoteTriggerFile)));

	return false;
}