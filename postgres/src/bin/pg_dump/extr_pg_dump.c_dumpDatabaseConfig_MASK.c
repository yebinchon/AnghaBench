#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int remoteVersion; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,char*,char const*,char*,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int,...) ; 

__attribute__((used)) static void
FUNC10(Archive *AH, PQExpBuffer outbuf,
				   const char *dbname, Oid dboid)
{
	PGconn	   *conn = FUNC1(AH);
	PQExpBuffer buf = FUNC6();
	PGresult   *res;
	int			count = 1;

	/*
	 * First collect database-specific options.  Pre-8.4 server versions lack
	 * unnest(), so we do this the hard way by querying once per subscript.
	 */
	for (;;)
	{
		if (AH->remoteVersion >= 90000)
			FUNC9(buf, "SELECT setconfig[%d] FROM pg_db_role_setting "
							  "WHERE setrole = 0 AND setdatabase = '%u'::oid",
							  count, dboid);
		else
			FUNC9(buf, "SELECT datconfig[%d] FROM pg_database WHERE oid = '%u'::oid", count, dboid);

		res = FUNC0(AH, buf->data, PGRES_TUPLES_OK);

		if (FUNC5(res) == 1 &&
			!FUNC3(res, 0, 0))
		{
			FUNC8(conn, FUNC4(res, 0, 0),
								   "DATABASE", dbname, NULL, NULL,
								   outbuf);
			FUNC2(res);
			count++;
		}
		else
		{
			FUNC2(res);
			break;
		}
	}

	/* Now look for role-and-database-specific options */
	if (AH->remoteVersion >= 90000)
	{
		/* Here we can assume we have unnest() */
		FUNC9(buf, "SELECT rolname, unnest(setconfig) "
						  "FROM pg_db_role_setting s, pg_roles r "
						  "WHERE setrole = r.oid AND setdatabase = '%u'::oid",
						  dboid);

		res = FUNC0(AH, buf->data, PGRES_TUPLES_OK);

		if (FUNC5(res) > 0)
		{
			int			i;

			for (i = 0; i < FUNC5(res); i++)
				FUNC8(conn, FUNC4(res, i, 1),
									   "ROLE", FUNC4(res, i, 0),
									   "DATABASE", dbname,
									   outbuf);
		}

		FUNC2(res);
	}

	FUNC7(buf);
}