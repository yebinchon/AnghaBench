#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  PG_DIAG_SQLSTATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int,...) ; 
 scalar_t__ FUNC14 (char const*,int /*<<< orphan*/ ) ; 

bool
FUNC15(PGconn *conn, const char *slot_name, const char *plugin,
					  bool is_temporary, bool is_physical, bool reserve_wal,
					  bool slot_exists_ok)
{
	PQExpBuffer query;
	PGresult   *res;

	query = FUNC11();

	FUNC0((is_physical && plugin == NULL) ||
		   (!is_physical && plugin != NULL));
	FUNC0(slot_name != NULL);

	/* Build query */
	FUNC9(query, "CREATE_REPLICATION_SLOT \"%s\"", slot_name);
	if (is_temporary)
		FUNC10(query, " TEMPORARY");
	if (is_physical)
	{
		FUNC10(query, " PHYSICAL");
		if (reserve_wal)
			FUNC10(query, " RESERVE_WAL");
	}
	else
	{
		FUNC9(query, " LOGICAL \"%s\"", plugin);
		if (FUNC8(conn) >= 100000)
			/* pg_recvlogical doesn't use an exported snapshot, so suppress */
			FUNC10(query, " NOEXPORT_SNAPSHOT");
	}

	res = FUNC3(conn, query->data);
	if (FUNC7(res) != PGRES_TUPLES_OK)
	{
		const char *sqlstate = FUNC6(res, PG_DIAG_SQLSTATE);

		if (slot_exists_ok &&
			sqlstate &&
			FUNC14(sqlstate, ERRCODE_DUPLICATE_OBJECT) == 0)
		{
			FUNC12(query);
			FUNC1(res);
			return true;
		}
		else
		{
			FUNC13("could not send replication command \"%s\": %s",
						 query->data, FUNC2(conn));

			FUNC12(query);
			FUNC1(res);
			return false;
		}
	}

	if (FUNC5(res) != 1 || FUNC4(res) != 4)
	{
		FUNC13("could not create replication slot \"%s\": got %d rows and %d fields, expected %d rows and %d fields",
					 slot_name,
					 FUNC5(res), FUNC4(res), 1, 4);

		FUNC12(query);
		FUNC1(res);
		return false;
	}

	FUNC12(query);
	FUNC1(res);
	return true;
}