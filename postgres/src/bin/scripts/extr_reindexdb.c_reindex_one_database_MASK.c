#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_19__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_18__ {TYPE_1__* head; } ;
struct TYPE_17__ {char* val; struct TYPE_17__* next; } ;
typedef  TYPE_1__ SimpleStringListCell ;
typedef  TYPE_2__ SimpleStringList ;
typedef  int ReindexType ;
typedef  TYPE_3__ ParallelSlot ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CancelRequested ; 
 int FUNC1 (int,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC6 (char const*,char const*,char const*,char const*,int,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
#define  REINDEX_DATABASE 132 
#define  REINDEX_INDEX 131 
#define  REINDEX_SCHEMA 130 
#define  REINDEX_SYSTEM 129 
#define  REINDEX_TABLE 128 
 int /*<<< orphan*/ * FUNC9 (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 TYPE_2__* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int const,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC20(const char *dbname, ReindexType type,
					 SimpleStringList *user_list, const char *host,
					 const char *port, const char *username,
					 enum trivalue prompt_password, const char *progname, bool echo,
					 bool verbose, bool concurrently, int concurrentCons)
{
	PGconn	   *conn;
	SimpleStringListCell *cell;
	bool		parallel = concurrentCons > 1;
	SimpleStringList *process_list = user_list;
	ReindexType process_type = type;
	ParallelSlot *slots;
	bool		failed = false;
	int			items_count = 0;

	conn = FUNC9(dbname, host, port, username, prompt_password,
						   progname, echo, false, false);

	if (concurrently && FUNC4(conn) < 120000)
	{
		FUNC3(conn);
		FUNC14("cannot use the \"%s\" option on server versions older than PostgreSQL %s",
					 "concurrently", "12");
		FUNC10(1);
	}

	if (!parallel)
	{
		switch (process_type)
		{
			case REINDEX_DATABASE:
			case REINDEX_SYSTEM:

				/*
				 * Database and system reindexes only need to work on the
				 * database itself, so build a list with a single entry.
				 */
				FUNC0(user_list == NULL);
				process_list = FUNC16(sizeof(SimpleStringList));
				FUNC18(process_list, FUNC2(conn));
				break;

			case REINDEX_INDEX:
			case REINDEX_SCHEMA:
			case REINDEX_TABLE:
				FUNC0(user_list != NULL);
				break;
		}
	}
	else
	{
		switch (process_type)
		{
			case REINDEX_DATABASE:

				/*
				 * Database-wide parallel reindex requires special processing.
				 * If multiple jobs were asked, we have to reindex system
				 * catalogs first as they cannot be processed in parallel.
				 */
				if (concurrently)
					FUNC15("cannot reindex system catalogs concurrently, skipping all");
				else
					FUNC17(conn, REINDEX_SYSTEM, FUNC2(conn), echo,
										verbose, concurrently, false);

				/* Build a list of relations from the database */
				process_list = FUNC11(conn, process_type,
														user_list, echo);
				process_type = REINDEX_TABLE;

				/* Bail out if nothing to process */
				if (process_list == NULL)
					return;
				break;

			case REINDEX_SCHEMA:
				FUNC0(user_list != NULL);

				/* Build a list of relations from all the schemas */
				process_list = FUNC11(conn, process_type,
														user_list, echo);
				process_type = REINDEX_TABLE;

				/* Bail out if nothing to process */
				if (process_list == NULL)
					return;
				break;

			case REINDEX_SYSTEM:
			case REINDEX_INDEX:
				/* not supported */
				FUNC0(false);
				break;

			case REINDEX_TABLE:

				/*
				 * Fall through.  The list of items for tables is already
				 * created.
				 */
				break;
		}
	}

	/*
	 * Adjust the number of concurrent connections depending on the items in
	 * the list.  We choose the minimum between the number of concurrent
	 * connections and the number of items in the list.
	 */
	for (cell = process_list->head; cell; cell = cell->next)
	{
		items_count++;

		/* no need to continue if there are more elements than jobs */
		if (items_count >= concurrentCons)
			break;
	}
	concurrentCons = FUNC1(concurrentCons, items_count);
	FUNC0(concurrentCons > 0);

	FUNC0(process_list != NULL);

	slots = FUNC6(dbname, host, port, username, prompt_password,
							   progname, echo, conn, concurrentCons);

	cell = process_list->head;
	do
	{
		const char *objname = cell->val;
		ParallelSlot *free_slot = NULL;

		if (CancelRequested)
		{
			failed = true;
			goto finish;
		}

		free_slot = FUNC5(slots, concurrentCons);
		if (!free_slot)
		{
			failed = true;
			goto finish;
		}

		FUNC17(free_slot->connection, process_type, objname,
							echo, verbose, concurrently, true);

		cell = cell->next;
	} while (cell != NULL);

	if (!FUNC8(slots, concurrentCons))
		failed = true;

finish:
	if (process_list != user_list)
	{
		FUNC19(process_list);
		FUNC13(process_list);
	}

	FUNC7(slots, concurrentCons);
	FUNC12(slots);

	if (failed)
		FUNC10(1);
}