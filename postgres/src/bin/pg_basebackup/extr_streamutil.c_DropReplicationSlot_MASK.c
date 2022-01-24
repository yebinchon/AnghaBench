#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char const*) ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,scalar_t__,...) ; 

bool
FUNC11(PGconn *conn, const char *slot_name)
{
	PQExpBuffer query;
	PGresult   *res;

	FUNC0(slot_name != NULL);

	query = FUNC8();

	/* Build query */
	FUNC7(query, "DROP_REPLICATION_SLOT \"%s\"",
					  slot_name);
	res = FUNC3(conn, query->data);
	if (FUNC6(res) != PGRES_COMMAND_OK)
	{
		FUNC10("could not send replication command \"%s\": %s",
					 query->data, FUNC2(conn));

		FUNC9(query);
		FUNC1(res);
		return false;
	}

	if (FUNC5(res) != 0 || FUNC4(res) != 0)
	{
		FUNC10("could not drop replication slot \"%s\": got %d rows and %d fields, expected %d rows and %d fields",
					 slot_name,
					 FUNC5(res), FUNC4(res), 0, 0);

		FUNC9(query);
		FUNC1(res);
		return false;
	}

	FUNC9(query);
	FUNC1(res);
	return true;
}