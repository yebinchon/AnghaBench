#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int narray; TYPE_2__** array; } ;
typedef  TYPE_1__ filemap_t ;
struct TYPE_7__ {int action; int /*<<< orphan*/  newsize; int /*<<< orphan*/  oldsize; int /*<<< orphan*/  path; int /*<<< orphan*/  pagemap; } ;
typedef  TYPE_2__ file_entry_t ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
#define  FILE_ACTION_COPY 133 
#define  FILE_ACTION_COPY_TAIL 132 
#define  FILE_ACTION_CREATE 131 
#define  FILE_ACTION_NONE 130 
#define  FILE_ACTION_REMOVE 129 
#define  FILE_ACTION_TRUNCATE 128 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_COPY_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(filemap_t *map)
{
	file_entry_t *entry;
	const char *sql;
	PGresult   *res;
	int			i;

	/*
	 * First create a temporary table, and load it with the blocks that we
	 * need to fetch.
	 */
	sql = "CREATE TEMPORARY TABLE fetchchunks(path text, begin int8, len int4);";
	FUNC14(sql);

	sql = "COPY fetchchunks FROM STDIN";
	res = FUNC2(conn, sql);

	if (FUNC6(res) != PGRES_COPY_IN)
		FUNC11("could not send file list: %s",
				 FUNC5(res));
	FUNC0(res);

	for (i = 0; i < map->narray; i++)
	{
		entry = map->array[i];

		/* If this is a relation file, copy the modified blocks */
		FUNC8(&entry->pagemap, entry->path);

		switch (entry->action)
		{
			case FILE_ACTION_NONE:
				/* nothing else to do */
				break;

			case FILE_ACTION_COPY:
				/* Truncate the old file out of the way, if any */
				FUNC10(entry->path, true);
				FUNC9(entry->path, 0, entry->newsize);
				break;

			case FILE_ACTION_TRUNCATE:
				FUNC15(entry->path, entry->newsize);
				break;

			case FILE_ACTION_COPY_TAIL:
				FUNC9(entry->path, entry->oldsize, entry->newsize);
				break;

			case FILE_ACTION_REMOVE:
				FUNC13(entry);
				break;

			case FILE_ACTION_CREATE:
				FUNC7(entry);
				break;
		}
	}

	if (FUNC4(conn, NULL) != 1)
		FUNC11("could not send end-of-COPY: %s",
				 FUNC1(conn));

	while ((res = FUNC3(conn)) != NULL)
	{
		if (FUNC6(res) != PGRES_COMMAND_OK)
			FUNC11("unexpected result while sending file list: %s",
					 FUNC5(res));
		FUNC0(res);
	}

	/*
	 * We've now copied the list of file ranges that we need to fetch to the
	 * temporary table. Now, actually fetch all of those ranges.
	 */
	sql =
		"SELECT path, begin,\n"
		"  pg_read_binary_file(path, begin, len, true) AS chunk\n"
		"FROM fetchchunks\n";

	FUNC12(sql);
}