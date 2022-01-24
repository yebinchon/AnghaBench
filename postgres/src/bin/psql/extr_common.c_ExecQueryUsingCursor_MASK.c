#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int start_table; int stop_table; int expanded; scalar_t__ prior_records; } ;
struct TYPE_9__ {TYPE_8__ topt; } ;
typedef  TYPE_1__ printQueryOpt ;
typedef  int int64 ;
typedef  int /*<<< orphan*/  instr_time ;
typedef  int /*<<< orphan*/  fetch_cmd ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_11__ {int fetch_count; scalar_t__ timing; int /*<<< orphan*/  db; int /*<<< orphan*/  vars; scalar_t__ gfname; int /*<<< orphan*/  logfile; scalar_t__ gset_prefix; int /*<<< orphan*/ * queryFout; scalar_t__ g_expanded; TYPE_1__ popt; } ;
struct TYPE_10__ {char* data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* INT64_FORMAT ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 scalar_t__ PQTRANS_IDLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*,char const*) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC29(const char *query, double *elapsed_msec)
{
	bool		OK = true;
	PGresult   *results;
	PQExpBufferData buf;
	printQueryOpt my_popt = pset.popt;
	FILE	   *fout;
	bool		is_pipe;
	bool		is_pager = false;
	bool		started_txn = false;
	int64		total_tuples = 0;
	int			ntuples;
	int			fetch_count;
	char		fetch_cmd[64];
	instr_time	before,
				after;
	int			flush_error;

	*elapsed_msec = 0;

	/* initialize print options for partial table output */
	my_popt.topt.start_table = true;
	my_popt.topt.stop_table = false;
	my_popt.topt.prior_records = 0;

	if (pset.timing)
		FUNC5(before);

	/* if we're not in a transaction, start one */
	if (FUNC11(pset.db) == PQTRANS_IDLE)
	{
		results = FUNC8(pset.db, "BEGIN");
		OK = FUNC0(results) &&
			(FUNC10(results) == PGRES_COMMAND_OK);
		FUNC2(results);
		if (!OK)
			return false;
		started_txn = true;
	}

	/* Send DECLARE CURSOR */
	FUNC22(&buf);
	FUNC16(&buf, "DECLARE _psql_cursor NO SCROLL CURSOR FOR\n%s",
					  query);

	results = FUNC8(pset.db, buf.data);
	OK = FUNC0(results) &&
		(FUNC10(results) == PGRES_COMMAND_OK);
	if (!OK)
		FUNC13(results, OK);
	FUNC2(results);
	FUNC28(&buf);
	if (!OK)
		goto cleanup;

	if (pset.timing)
	{
		FUNC5(after);
		FUNC6(after, before);
		*elapsed_msec += FUNC4(after);
	}

	/*
	 * In \gset mode, we force the fetch count to be 2, so that we will throw
	 * the appropriate error if the query returns more than one row.
	 */
	if (pset.gset_prefix)
		fetch_count = 2;
	else
		fetch_count = pset.fetch_count;

	FUNC27(fetch_cmd, sizeof(fetch_cmd),
			 "FETCH FORWARD %d FROM _psql_cursor",
			 fetch_count);

	/* one-shot expanded output requested via \gx */
	if (pset.g_expanded)
		my_popt.topt.expanded = 1;

	/* prepare to write output to \g argument, if any */
	if (pset.gfname)
	{
		if (!FUNC23(pset.gfname, &fout, &is_pipe))
		{
			OK = false;
			goto cleanup;
		}
		if (is_pipe)
			FUNC18();
	}
	else
	{
		fout = pset.queryFout;
		is_pipe = false;		/* doesn't matter */
	}

	/* clear any pre-existing error indication on the output stream */
	FUNC17(fout);

	for (;;)
	{
		if (pset.timing)
			FUNC5(before);

		/* get fetch_count tuples at a time */
		results = FUNC8(pset.db, fetch_cmd);

		if (pset.timing)
		{
			FUNC5(after);
			FUNC6(after, before);
			*elapsed_msec += FUNC4(after);
		}

		if (FUNC10(results) != PGRES_TUPLES_OK)
		{
			/* shut down pager before printing error message */
			if (is_pager)
			{
				FUNC3(fout);
				is_pager = false;
			}

			OK = FUNC0(results);
			FUNC1(!OK);
			FUNC13(results, OK);
			FUNC2(results);
			break;
		}

		if (pset.gset_prefix)
		{
			/* StoreQueryTuple will complain if not exactly one row */
			OK = FUNC15(results);
			FUNC2(results);
			break;
		}

		/*
		 * Note we do not deal with \gdesc, \gexec or \crosstabview modes here
		 */

		ntuples = FUNC9(results);
		total_tuples += ntuples;

		if (ntuples < fetch_count)
		{
			/* this is the last result set, so allow footer decoration */
			my_popt.topt.stop_table = true;
		}
		else if (fout == stdout && !is_pager)
		{
			/*
			 * If query requires multiple result sets, hack to ensure that
			 * only one pager instance is used for the whole mess
			 */
			fout = FUNC12(INT_MAX, &(my_popt.topt));
			is_pager = true;
		}

		FUNC25(results, &my_popt, fout, is_pager, pset.logfile);

		FUNC2(results);

		/* after the first result set, disallow header decoration */
		my_popt.topt.start_table = false;
		my_popt.topt.prior_records += ntuples;

		/*
		 * Make sure to flush the output stream, so intermediate results are
		 * visible to the client immediately.  We check the results because if
		 * the pager dies/exits/etc, there's no sense throwing more data at
		 * it.
		 */
		flush_error = FUNC21(fout);

		/*
		 * Check if we are at the end, if a cancel was pressed, or if there
		 * were any errors either trying to flush out the results, or more
		 * generally on the output stream at all.  If we hit any errors
		 * writing things to the stream, we presume $PAGER has disappeared and
		 * stop bothering to pull down more data.
		 */
		if (ntuples < fetch_count || cancel_pressed || flush_error ||
			FUNC20(fout))
			break;
	}

	if (pset.gfname)
	{
		/* close \g argument file/pipe */
		if (is_pipe)
		{
			FUNC24(fout);
			FUNC26();
		}
		else
			FUNC19(fout);
	}
	else if (is_pager)
	{
		/* close transient pager */
		FUNC3(fout);
	}

	if (OK)
	{
		/*
		 * We don't have a PGresult here, and even if we did it wouldn't have
		 * the right row count, so fake SetResultVariables().  In error cases,
		 * we already set the result variables above.
		 */
		char		buf[32];

		FUNC14(pset.vars, "ERROR", "false");
		FUNC14(pset.vars, "SQLSTATE", "00000");
		FUNC27(buf, sizeof(buf), INT64_FORMAT, total_tuples);
		FUNC14(pset.vars, "ROW_COUNT", buf);
	}

cleanup:
	if (pset.timing)
		FUNC5(before);

	/*
	 * We try to close the cursor on either success or failure, but on failure
	 * ignore the result (it's probably just a bleat about being in an aborted
	 * transaction)
	 */
	results = FUNC8(pset.db, "CLOSE _psql_cursor");
	if (OK)
	{
		OK = FUNC0(results) &&
			(FUNC10(results) == PGRES_COMMAND_OK);
		FUNC2(results);
	}
	else
		FUNC7(results);

	if (started_txn)
	{
		results = FUNC8(pset.db, OK ? "COMMIT" : "ROLLBACK");
		OK &= FUNC0(results) &&
			(FUNC10(results) == PGRES_COMMAND_OK);
		FUNC2(results);
	}

	if (pset.timing)
	{
		FUNC5(after);
		FUNC6(after, before);
		*elapsed_msec += FUNC4(after);
	}

	return OK;
}