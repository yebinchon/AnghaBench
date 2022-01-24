#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sql ;
struct TYPE_3__ {int xact_depth; int changing_xact_state; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ ConnCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG3 ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC5(ConnCacheEntry *entry)
{
	int			curlevel = FUNC0();

	/* Start main transaction if we haven't yet */
	if (entry->xact_depth <= 0)
	{
		const char *sql;

		FUNC3(DEBUG3, "starting remote transaction on connection %p",
			 entry->conn);

		if (FUNC1())
			sql = "START TRANSACTION ISOLATION LEVEL SERIALIZABLE";
		else
			sql = "START TRANSACTION ISOLATION LEVEL REPEATABLE READ";
		entry->changing_xact_state = true;
		FUNC2(entry->conn, sql);
		entry->xact_depth = 1;
		entry->changing_xact_state = false;
	}

	/*
	 * If we're in a subtransaction, stack up savepoints to match our level.
	 * This ensures we can rollback just the desired effects when a
	 * subtransaction aborts.
	 */
	while (entry->xact_depth < curlevel)
	{
		char		sql[64];

		FUNC4(sql, sizeof(sql), "SAVEPOINT s%d", entry->xact_depth + 1);
		entry->changing_xact_state = true;
		FUNC2(entry->conn, sql);
		entry->xact_depth++;
		entry->changing_xact_state = false;
	}
}