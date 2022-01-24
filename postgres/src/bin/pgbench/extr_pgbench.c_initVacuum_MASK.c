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
	FUNC1(stderr, "vacuuming...\n");
	FUNC0(con, "vacuum analyze pgbench_branches");
	FUNC0(con, "vacuum analyze pgbench_tellers");
	FUNC0(con, "vacuum analyze pgbench_accounts");
	FUNC0(con, "vacuum analyze pgbench_history");
}