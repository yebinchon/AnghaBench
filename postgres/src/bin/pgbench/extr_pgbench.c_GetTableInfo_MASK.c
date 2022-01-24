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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  PART_HASH ; 
 int /*<<< orphan*/  PART_NONE ; 
 int /*<<< orphan*/  PART_RANGE ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  PG_DIAG_SQLSTATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  partition_method ; 
 scalar_t__ partitions ; 
 scalar_t__ scale ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char*) ; 

__attribute__((used)) static void
FUNC14(PGconn *con, bool scale_given)
{
	PGresult   *res;

	/*
	 * get the scaling factor that should be same as count(*) from
	 * pgbench_branches if this is not a custom query
	 */
	res = FUNC4(con, "select count(*) from pgbench_branches");
	if (FUNC9(res) != PGRES_TUPLES_OK)
	{
		char	   *sqlState = FUNC8(res, PG_DIAG_SQLSTATE);

		FUNC12(stderr, "%s", FUNC3(con));
		if (sqlState && FUNC13(sqlState, ERRCODE_UNDEFINED_TABLE) == 0)
		{
			FUNC12(stderr, "Perhaps you need to do initialization (\"pgbench -i\") in database \"%s\"\n", FUNC2(con));
		}

		FUNC11(1);
	}
	scale = FUNC10(FUNC6(res, 0, 0));
	if (scale < 0)
	{
		FUNC12(stderr, "invalid count(*) from pgbench_branches: \"%s\"\n",
				FUNC6(res, 0, 0));
		FUNC11(1);
	}
	FUNC1(res);

	/* warn if we override user-given -s switch */
	if (scale_given)
		FUNC12(stderr,
				"scale option ignored, using count from pgbench_branches table (%s)\n",
				scale);

	/*
	 * Get the partition information for the first "pgbench_accounts" table
	 * found in search_path.
	 *
	 * The result is empty if no "pgbench_accounts" is found.
	 *
	 * Otherwise, it always returns one row even if the table is not
	 * partitioned (in which case the partition strategy is NULL).
	 *
	 * The number of partitions can be 0 even for partitioned tables, if no
	 * partition is attached.
	 *
	 * We assume no partitioning on any failure, so as to avoid failing on an
	 * old version without "pg_partitioned_table".
	 */
	res = FUNC4(con,
				 "select o.n, p.partstrat, pg_catalog.count(i.inhparent) "
				 "from pg_catalog.pg_class as c "
				 "join pg_catalog.pg_namespace as n on (n.oid = c.relnamespace) "
				 "cross join lateral (select pg_catalog.array_position(pg_catalog.current_schemas(true), n.nspname)) as o(n) "
				 "left join pg_catalog.pg_partitioned_table as p on (p.partrelid = c.oid) "
				 "left join pg_catalog.pg_inherits as i on (c.oid = i.inhparent) "
				 "where c.relname = 'pgbench_accounts' and o.n is not null "
				 "group by 1, 2 "
				 "order by 1 asc "
				 "limit 1");

	if (FUNC9(res) != PGRES_TUPLES_OK)
	{
		/* probably an older version, coldly assume no partitioning */
		partition_method = PART_NONE;
		partitions = 0;
	}
	else if (FUNC7(res) == 0)
	{
		/*
		 * This case is unlikely as pgbench already found "pgbench_branches"
		 * above to compute the scale.
		 */
		FUNC12(stderr,
				"no pgbench_accounts table found in search_path\n"
				"Perhaps you need to do initialization (\"pgbench -i\") in database \"%s\".\n", FUNC2(con));
		FUNC11(1);
	}
	else						/* PQntupes(res) == 1 */
	{
		/* normal case, extract partition information */
		if (FUNC5(res, 0, 1))
			partition_method = PART_NONE;
		else
		{
			char	   *ps = FUNC6(res, 0, 1);

			/* column must be there */
			FUNC0(ps != NULL);

			if (FUNC13(ps, "r") == 0)
				partition_method = PART_RANGE;
			else if (FUNC13(ps, "h") == 0)
				partition_method = PART_HASH;
			else
			{
				/* possibly a newer version with new partition method */
				FUNC12(stderr, "unexpected partition method: \"%s\"\n", ps);
				FUNC11(1);
			}
		}

		partitions = FUNC10(FUNC6(res, 0, 2));
	}

	FUNC1(res);
}