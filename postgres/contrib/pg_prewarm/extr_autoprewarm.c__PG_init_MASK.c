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
typedef  int /*<<< orphan*/  AutoPrewarmSharedState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GUC_UNIT_S ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  PGC_POSTMASTER ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ autoprewarm ; 
 int /*<<< orphan*/  autoprewarm_interval ; 
 int /*<<< orphan*/  process_shared_preload_libraries_in_progress ; 

void
FUNC6(void)
{
	FUNC1("pg_prewarm.autoprewarm_interval",
							"Sets the interval between dumps of shared buffers",
							"If set to zero, time-based dumping is disabled.",
							&autoprewarm_interval,
							300,
							0, INT_MAX / 1000,
							PGC_SIGHUP,
							GUC_UNIT_S,
							NULL,
							NULL,
							NULL);

	if (!process_shared_preload_libraries_in_progress)
		return;

	/* can't define PGC_POSTMASTER variable after startup */
	FUNC0("pg_prewarm.autoprewarm",
							 "Starts the autoprewarm worker.",
							 NULL,
							 &autoprewarm,
							 true,
							 PGC_POSTMASTER,
							 0,
							 NULL,
							 NULL,
							 NULL);

	FUNC2("pg_prewarm");

	FUNC4(FUNC3(sizeof(AutoPrewarmSharedState)));

	/* Register autoprewarm worker, if enabled. */
	if (autoprewarm)
		FUNC5();
}