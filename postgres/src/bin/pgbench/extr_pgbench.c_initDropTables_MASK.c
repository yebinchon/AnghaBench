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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(PGconn *con)
{
	FUNC1(stderr, "dropping old tables...\n");

	/*
	 * We drop all the tables in one command, so that whether there are
	 * foreign key dependencies or not doesn't matter.
	 */
	FUNC0(con, "drop table if exists "
					 "pgbench_accounts, "
					 "pgbench_branches, "
					 "pgbench_history, "
					 "pgbench_tellers");
}