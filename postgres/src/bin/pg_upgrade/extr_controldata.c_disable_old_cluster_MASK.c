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
typedef  int /*<<< orphan*/  old_path ;
typedef  int /*<<< orphan*/  new_path ;
struct TYPE_2__ {char* pgdata; } ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  PG_REPORT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ old_cluster ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

void
FUNC6(void)
{
	char		old_path[MAXPGPATH],
				new_path[MAXPGPATH];

	/* rename pg_control so old server cannot be accidentally started */
	FUNC4("Adding \".old\" suffix to old global/pg_control");

	FUNC5(old_path, sizeof(old_path), "%s/global/pg_control", old_cluster.pgdata);
	FUNC5(new_path, sizeof(new_path), "%s/global/pg_control.old", old_cluster.pgdata);
	if (FUNC3(old_path, new_path) != 0)
		FUNC1("Unable to rename %s to %s.\n", old_path, new_path);
	FUNC0();

	FUNC2(PG_REPORT, "\n"
		   "If you want to start the old cluster, you will need to remove\n"
		   "the \".old\" suffix from %s/global/pg_control.old.\n"
		   "Because \"link\" mode was used, the old cluster cannot be safely\n"
		   "started once the new cluster has been started.\n\n", old_cluster.pgdata);
}