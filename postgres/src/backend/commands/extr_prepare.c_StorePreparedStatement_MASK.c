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
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_2__ {int from_sql; int /*<<< orphan*/  prepare_time; int /*<<< orphan*/ * plansource; } ;
typedef  TYPE_1__ PreparedStatement ;
typedef  int /*<<< orphan*/  CachedPlanSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DUPLICATE_PSTATEMENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  prepared_queries ; 

void
FUNC7(const char *stmt_name,
					   CachedPlanSource *plansource,
					   bool from_sql)
{
	PreparedStatement *entry;
	TimestampTz cur_ts = FUNC0();
	bool		found;

	/* Initialize the hash table, if necessary */
	if (!prepared_queries)
		FUNC1();

	/* Add entry to hash table */
	entry = (PreparedStatement *) FUNC6(prepared_queries,
											  stmt_name,
											  HASH_ENTER,
											  &found);

	/* Shouldn't get a duplicate entry */
	if (found)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_DUPLICATE_PSTATEMENT),
				 FUNC5("prepared statement \"%s\" already exists",
						stmt_name)));

	/* Fill in the hash table entry */
	entry->plansource = plansource;
	entry->from_sql = from_sql;
	entry->prepare_time = cur_ts;

	/* Now it's safe to move the CachedPlanSource to permanent memory */
	FUNC2(plansource);
}