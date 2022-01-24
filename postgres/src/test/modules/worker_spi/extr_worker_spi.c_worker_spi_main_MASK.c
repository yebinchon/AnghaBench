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
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* name; void* schema; } ;
typedef  TYPE_1__ worktable ;
typedef  void* int32 ;
struct TYPE_12__ {int /*<<< orphan*/  bgw_name; } ;
struct TYPE_11__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_10__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_8__* MyBgworkerEntry ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  PG_WAIT_EXTENSION ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int SPI_OK_UPDATE_RETURNING ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ SPI_processed ; 
 TYPE_7__* SPI_tuptable ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*,void*,void*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int,...) ; 
 int got_sighup ; 
 int /*<<< orphan*/  got_sigterm ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 TYPE_1__* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 void* FUNC26 (char*) ; 
 void* FUNC27 (void*) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*,int) ; 
 int /*<<< orphan*/  worker_spi_database ; 
 long worker_spi_naptime ; 
 int /*<<< orphan*/  worker_spi_sighup ; 
 int /*<<< orphan*/  worker_spi_sigterm ; 

void
FUNC29(Datum main_arg)
{
	int			index = FUNC4(main_arg);
	worktable  *table;
	StringInfoData buf;
	char		name[20];

	table = FUNC21(sizeof(worktable));
	FUNC28(name, "schema%d", index);
	table->schema = FUNC26(name);
	table->name = FUNC26("counted");

	/* Establish signal handlers before unblocking signals. */
	FUNC24(SIGHUP, worker_spi_sighup);
	FUNC24(SIGTERM, worker_spi_sigterm);

	/* We're now ready to receive signals */
	FUNC1();

	/* Connect to our database */
	FUNC0(worker_spi_database, NULL, 0);

	FUNC18(LOG, "%s initialized with %s.%s",
		 MyBgworkerEntry->bgw_name, table->schema, table->name);
	FUNC20(table);

	/*
	 * Quote identifiers passed to us.  Note that this must be done after
	 * initialize_worker_spi, because that routine assumes the names are not
	 * quoted.
	 *
	 * Note some memory might be leaked here.
	 */
	table->schema = FUNC27(table->schema);
	table->name = FUNC27(table->name);

	FUNC19(&buf);
	FUNC17(&buf,
					 "WITH deleted AS (DELETE "
					 "FROM %s.%s "
					 "WHERE type = 'delta' RETURNING value), "
					 "total AS (SELECT coalesce(sum(value), 0) as sum "
					 "FROM deleted) "
					 "UPDATE %s.%s "
					 "SET value = %s.value + total.sum "
					 "FROM total WHERE type = 'total' "
					 "RETURNING %s.value",
					 table->schema, table->name,
					 table->schema, table->name,
					 table->name,
					 table->name);

	/*
	 * Main loop: do this until the SIGTERM handler tells us to terminate
	 */
	while (!got_sigterm)
	{
		int			ret;

		/*
		 * Background workers mustn't call usleep() or any direct equivalent:
		 * instead, they may wait on their process latch, which sleeps as
		 * necessary, but is awakened if postmaster dies.  That way the
		 * background process goes away immediately in an emergency.
		 */
		(void) FUNC16(MyLatch,
						 WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
						 worker_spi_naptime * 1000L,
						 PG_WAIT_EXTENSION);
		FUNC9(MyLatch);

		FUNC2();

		/*
		 * In case of a SIGHUP, just reload the configuration.
		 */
		if (got_sighup)
		{
			got_sighup = false;
			FUNC7(PGC_SIGHUP);
		}

		/*
		 * Start a transaction on which we can run queries.  Note that each
		 * StartTransactionCommand() call should be preceded by a
		 * SetCurrentStatementStartTimestamp() call, which sets both the time
		 * for the statement we're about the run, and also the transaction
		 * start time.  Also, each other query sent to SPI should probably be
		 * preceded by SetCurrentStatementStartTimestamp(), so that statement
		 * start time is always up to date.
		 *
		 * The SPI_connect() call lets us run queries through the SPI manager,
		 * and the PushActiveSnapshot() call creates an "active" snapshot
		 * which is necessary for queries to have MVCC data to work on.
		 *
		 * The pgstat_report_activity() call makes our activity visible
		 * through the pgstat views.
		 */
		FUNC14();
		FUNC15();
		FUNC10();
		FUNC8(FUNC5());
		FUNC22(STATE_RUNNING, buf.data);

		/* We can now execute queries via SPI */
		ret = FUNC11(buf.data, false, 0);

		if (ret != SPI_OK_UPDATE_RETURNING)
			FUNC18(FATAL, "cannot select from table %s.%s: error code %d",
				 table->schema, table->name, ret);

		if (SPI_processed > 0)
		{
			bool		isnull;
			int32		val;

			val = FUNC4(FUNC13(SPI_tuptable->vals[0],
											  SPI_tuptable->tupdesc,
											  1, &isnull));
			if (!isnull)
				FUNC18(LOG, "%s: count in %s.%s is now %d",
					 MyBgworkerEntry->bgw_name,
					 table->schema, table->name, val);
		}

		/*
		 * And finish our transaction.
		 */
		FUNC12();
		FUNC6();
		FUNC3();
		FUNC23(false);
		FUNC22(STATE_IDLE, NULL);
	}

	FUNC25(1);
}