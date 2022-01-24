#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  major_version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  new_cluster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ old_cluster ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void)
{
	/*
	 * We unconditionally start/stop the new server because pg_resetwal -o set
	 * wal_level to 'minimum'.  If the user is upgrading standby servers using
	 * the rsync instructions, they will need pg_upgrade to write its final
	 * WAL record showing wal_level as 'replica'.
	 */
	FUNC3(&new_cluster, true);

	/* Create dummy large object permissions for old < PG 9.0? */
	if (FUNC0(old_cluster.major_version) <= 804)
		FUNC1(&new_cluster, false);

	/* Reindex hash indexes for old < 10.0 */
	if (FUNC0(old_cluster.major_version) <= 906)
		FUNC2(&new_cluster, false);

	FUNC4(false);
}