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
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 char** PARTITION_METHOD ; 
 size_t PART_NONE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ SCALE_32BIT_THRESHOLD ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct ddlinfo const*) ; 
 size_t partition_method ; 
 scalar_t__ scale ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int FUNC9 (char*) ; 
 char* tablespace ; 
 scalar_t__ unlogged_tables ; 

__attribute__((used)) static void
FUNC10(PGconn *con)
{
	/*
	 * Note: TPC-B requires at least 100 bytes per row, and the "filler"
	 * fields in these table declarations were intended to comply with that.
	 * The pgbench_accounts table complies with that because the "filler"
	 * column is set to blank-padded empty string. But for all other tables
	 * the columns default to NULL and so don't actually take any space.  We
	 * could fix that by giving them non-null default values.  However, that
	 * would completely break comparability of pgbench results with prior
	 * versions. Since pgbench has never pretended to be fully TPC-B compliant
	 * anyway, we stick with the historical behavior.
	 */
	struct ddlinfo
	{
		const char *table;		/* table name */
		const char *smcols;		/* column decls if accountIDs are 32 bits */
		const char *bigcols;	/* column decls if accountIDs are 64 bits */
		int			declare_fillfactor;
	};
	static const struct ddlinfo DDLs[] = {
		{
			"pgbench_history",
			"tid int,bid int,aid    int,delta int,mtime timestamp,filler char(22)",
			"tid int,bid int,aid bigint,delta int,mtime timestamp,filler char(22)",
			0
		},
		{
			"pgbench_tellers",
			"tid int not null,bid int,tbalance int,filler char(84)",
			"tid int not null,bid int,tbalance int,filler char(84)",
			1
		},
		{
			"pgbench_accounts",
			"aid    int not null,bid int,abalance int,filler char(84)",
			"aid bigint not null,bid int,abalance int,filler char(84)",
			1
		},
		{
			"pgbench_branches",
			"bid int not null,bbalance int,filler char(88)",
			"bid int not null,bbalance int,filler char(88)",
			1
		}
	};
	int			i;

	FUNC5(stderr, "creating tables...\n");

	for (i = 0; i < FUNC6(DDLs); i++)
	{
		char		opts[256];
		char		buffer[256];
		const struct ddlinfo *ddl = &DDLs[i];
		const char *cols;

		/* Construct new create table statement. */
		opts[0] = '\0';

		/* Partition pgbench_accounts table */
		if (partition_method != PART_NONE && FUNC8(ddl->table, "pgbench_accounts") == 0)
			FUNC7(opts + FUNC9(opts), sizeof(opts) - FUNC9(opts),
					 " partition by %s (aid)", PARTITION_METHOD[partition_method]);
		else if (ddl->declare_fillfactor)
			/* fillfactor is only expected on actual tables */
			FUNC2(opts, sizeof(opts));

		if (tablespace != NULL)
		{
			char	   *escape_tablespace;

			escape_tablespace = FUNC0(con, tablespace,
												   FUNC9(tablespace));
			FUNC7(opts + FUNC9(opts), sizeof(opts) - FUNC9(opts),
					 " tablespace %s", escape_tablespace);
			FUNC1(escape_tablespace);
		}

		cols = (scale >= SCALE_32BIT_THRESHOLD) ? ddl->bigcols : ddl->smcols;

		FUNC7(buffer, sizeof(buffer), "create%s table %s(%s)%s",
				 unlogged_tables ? " unlogged" : "",
				 ddl->table, cols, opts);

		FUNC4(con, buffer);
	}

	if (partition_method != PART_NONE)
		FUNC3(con);
}