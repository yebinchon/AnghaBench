#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* data; } ;
typedef  int ReindexType ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
#define  REINDEX_DATABASE 132 
#define  REINDEX_INDEX 131 
#define  REINDEX_SCHEMA 130 
#define  REINDEX_SYSTEM 129 
#define  REINDEX_TABLE 128 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char const* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC15(PGconn *conn, ReindexType type, const char *name,
					bool echo, bool verbose, bool concurrently, bool async)
{
	PQExpBufferData sql;
	bool		status;

	FUNC0(name);

	/* build the REINDEX query */
	FUNC11(&sql);

	FUNC6(&sql, "REINDEX ");

	if (verbose)
		FUNC6(&sql, "(VERBOSE) ");

	/* object type */
	switch (type)
	{
		case REINDEX_DATABASE:
			FUNC6(&sql, "DATABASE ");
			break;
		case REINDEX_INDEX:
			FUNC6(&sql, "INDEX ");
			break;
		case REINDEX_SCHEMA:
			FUNC6(&sql, "SCHEMA ");
			break;
		case REINDEX_SYSTEM:
			FUNC6(&sql, "SYSTEM ");
			break;
		case REINDEX_TABLE:
			FUNC6(&sql, "TABLE ");
			break;
	}

	if (concurrently)
		FUNC6(&sql, "CONCURRENTLY ");

	/* object name */
	switch (type)
	{
		case REINDEX_DATABASE:
		case REINDEX_SYSTEM:
			FUNC6(&sql, FUNC10(name));
			break;
		case REINDEX_INDEX:
		case REINDEX_TABLE:
			FUNC7(&sql, name, conn, echo);
			break;
		case REINDEX_SCHEMA:
			FUNC6(&sql, name);
			break;
	}

	/* finish the query */
	FUNC5(&sql, ';');

	if (async)
	{
		if (echo)
			FUNC13("%s\n", sql.data);

		status = FUNC4(conn, sql.data) == 1;
	}
	else
		status = FUNC8(conn, sql.data, echo);

	if (!status)
	{
		switch (type)
		{
			case REINDEX_DATABASE:
				FUNC12("reindexing of database \"%s\" failed: %s",
							 FUNC1(conn), FUNC2(conn));
				break;
			case REINDEX_INDEX:
				FUNC12("reindexing of index \"%s\" in database \"%s\" failed: %s",
							 name, FUNC1(conn), FUNC2(conn));
				break;
			case REINDEX_SCHEMA:
				FUNC12("reindexing of schema \"%s\" in database \"%s\" failed: %s",
							 name, FUNC1(conn), FUNC2(conn));
				break;
			case REINDEX_SYSTEM:
				FUNC12("reindexing of system catalogs on database \"%s\" failed: %s",
							 FUNC1(conn), FUNC2(conn));
				break;
			case REINDEX_TABLE:
				FUNC12("reindexing of table \"%s\" in database \"%s\" failed: %s",
							 name, FUNC1(conn), FUNC2(conn));
				break;
		}
		if (!async)
		{
			FUNC3(conn);
			FUNC9(1);
		}
	}

	FUNC14(&sql);
}