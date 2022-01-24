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
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ autovacuum_start_daemon ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  pgstat_track_counts ; 

void
FUNC3(void)
{
	if (autovacuum_start_daemon && !pgstat_track_counts)
		FUNC0(WARNING,
				(FUNC2("autovacuum not started because of misconfiguration"),
				 FUNC1("Enable the \"track_counts\" option.")));
}