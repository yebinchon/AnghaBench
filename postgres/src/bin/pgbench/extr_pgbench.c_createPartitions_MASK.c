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
typedef  int /*<<< orphan*/  query ;
typedef  int int64 ;
typedef  int /*<<< orphan*/  ff ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* INT64_FORMAT ; 
 scalar_t__ PART_HASH ; 
 scalar_t__ PART_RANGE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int naccounts ; 
 scalar_t__ partition_method ; 
 int partitions ; 
 scalar_t__ scale ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ unlogged_tables ; 

__attribute__((used)) static void
FUNC6(PGconn *con)
{
	char		ff[64];

	ff[0] = '\0';

	/*
	 * Per ddlinfo in initCreateTables, fillfactor is needed on table
	 * pgbench_accounts.
	 */
	FUNC1(ff, sizeof(ff));

	/* we must have to create some partitions */
	FUNC0(partitions > 0);

	FUNC3(stderr, "creating %d partitions...\n", partitions);

	for (int p = 1; p <= partitions; p++)
	{
		char		query[256];

		if (partition_method == PART_RANGE)
		{
			int64		part_size = (naccounts * (int64) scale + partitions - 1) / partitions;
			char		minvalue[32],
						maxvalue[32];

			/*
			 * For RANGE, we use open-ended partitions at the beginning and
			 * end to allow any valid value for the primary key.  Although the
			 * actual minimum and maximum values can be derived from the
			 * scale, it is more generic and the performance is better.
			 */
			if (p == 1)
				FUNC5(minvalue, "minvalue");
			else
				FUNC5(minvalue, INT64_FORMAT, (p - 1) * part_size + 1);

			if (p < partitions)
				FUNC5(maxvalue, INT64_FORMAT, p * part_size + 1);
			else
				FUNC5(maxvalue, "maxvalue");

			FUNC4(query, sizeof(query),
					 "create%s table pgbench_accounts_%d\n"
					 "  partition of pgbench_accounts\n"
					 "  for values from (%s) to (%s)%s\n",
					 unlogged_tables ? " unlogged" : "", p,
					 minvalue, maxvalue, ff);
		}
		else if (partition_method == PART_HASH)
			FUNC4(query, sizeof(query),
					 "create%s table pgbench_accounts_%d\n"
					 "  partition of pgbench_accounts\n"
					 "  for values with (modulus %d, remainder %d)%s\n",
					 unlogged_tables ? " unlogged" : "", p,
					 partitions, p - 1, ff);
		else					/* cannot get there */
			FUNC0(0);

		FUNC2(con, query);
	}
}