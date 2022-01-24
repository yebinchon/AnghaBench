#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int sversion; TYPE_2__* lobjfuncs; int /*<<< orphan*/  errorMessage; } ;
struct TYPE_12__ {scalar_t__ fn_lo_open; scalar_t__ fn_lo_close; scalar_t__ fn_lo_creat; scalar_t__ fn_lo_unlink; scalar_t__ fn_lo_lseek; scalar_t__ fn_lo_tell; scalar_t__ fn_lo_read; scalar_t__ fn_lo_write; void* fn_lo_truncate64; void* fn_lo_truncate; void* fn_lo_tell64; void* fn_lo_lseek64; void* fn_lo_create; } ;
struct TYPE_11__ {scalar_t__ resultStatus; } ;
typedef  TYPE_1__ PGresult ;
typedef  TYPE_2__ PGlobjfuncs ;
typedef  TYPE_3__ PGconn ;
typedef  void* Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,char const*) ; 
 char* FUNC3 (TYPE_1__*,int,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static int
FUNC11(PGconn *conn)
{
	PGresult   *res;
	PGlobjfuncs *lobjfuncs;
	int			n;
	const char *query;
	const char *fname;
	Oid			foid;

	if (!conn)
		return -1;

	/*
	 * Allocate the structure to hold the functions OID's
	 */
	lobjfuncs = (PGlobjfuncs *) FUNC8(sizeof(PGlobjfuncs));
	if (lobjfuncs == NULL)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("out of memory\n"));
		return -1;
	}
	FUNC0((char *) lobjfuncs, 0, sizeof(PGlobjfuncs));

	/*
	 * Execute the query to get all the functions at once.  In 7.3 and later
	 * we need to be schema-safe.  lo_create only exists in 8.1 and up.
	 * lo_truncate only exists in 8.3 and up.
	 */
	if (conn->sversion >= 70300)
		query = "select proname, oid from pg_catalog.pg_proc "
			"where proname in ("
			"'lo_open', "
			"'lo_close', "
			"'lo_creat', "
			"'lo_create', "
			"'lo_unlink', "
			"'lo_lseek', "
			"'lo_lseek64', "
			"'lo_tell', "
			"'lo_tell64', "
			"'lo_truncate', "
			"'lo_truncate64', "
			"'loread', "
			"'lowrite') "
			"and pronamespace = (select oid from pg_catalog.pg_namespace "
			"where nspname = 'pg_catalog')";
	else
		query = "select proname, oid from pg_proc "
			"where proname = 'lo_open' "
			"or proname = 'lo_close' "
			"or proname = 'lo_creat' "
			"or proname = 'lo_unlink' "
			"or proname = 'lo_lseek' "
			"or proname = 'lo_tell' "
			"or proname = 'loread' "
			"or proname = 'lowrite'";

	res = FUNC2(conn, query);
	if (res == NULL)
	{
		FUNC6(lobjfuncs);
		return -1;
	}

	if (res->resultStatus != PGRES_TUPLES_OK)
	{
		FUNC6(lobjfuncs);
		FUNC1(res);
		FUNC9(&conn->errorMessage,
						  FUNC7("query to initialize large object functions did not return data\n"));
		return -1;
	}

	/*
	 * Examine the result and put the OID's into the struct
	 */
	for (n = 0; n < FUNC4(res); n++)
	{
		fname = FUNC3(res, n, 0);
		foid = (Oid) FUNC5(FUNC3(res, n, 1));
		if (FUNC10(fname, "lo_open") == 0)
			lobjfuncs->fn_lo_open = foid;
		else if (FUNC10(fname, "lo_close") == 0)
			lobjfuncs->fn_lo_close = foid;
		else if (FUNC10(fname, "lo_creat") == 0)
			lobjfuncs->fn_lo_creat = foid;
		else if (FUNC10(fname, "lo_create") == 0)
			lobjfuncs->fn_lo_create = foid;
		else if (FUNC10(fname, "lo_unlink") == 0)
			lobjfuncs->fn_lo_unlink = foid;
		else if (FUNC10(fname, "lo_lseek") == 0)
			lobjfuncs->fn_lo_lseek = foid;
		else if (FUNC10(fname, "lo_lseek64") == 0)
			lobjfuncs->fn_lo_lseek64 = foid;
		else if (FUNC10(fname, "lo_tell") == 0)
			lobjfuncs->fn_lo_tell = foid;
		else if (FUNC10(fname, "lo_tell64") == 0)
			lobjfuncs->fn_lo_tell64 = foid;
		else if (FUNC10(fname, "lo_truncate") == 0)
			lobjfuncs->fn_lo_truncate = foid;
		else if (FUNC10(fname, "lo_truncate64") == 0)
			lobjfuncs->fn_lo_truncate64 = foid;
		else if (FUNC10(fname, "loread") == 0)
			lobjfuncs->fn_lo_read = foid;
		else if (FUNC10(fname, "lowrite") == 0)
			lobjfuncs->fn_lo_write = foid;
	}

	FUNC1(res);

	/*
	 * Finally check that we got all required large object interface functions
	 * (ones that have been added later than the stone age are instead checked
	 * only if used)
	 */
	if (lobjfuncs->fn_lo_open == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lo_open\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_close == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lo_close\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_creat == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lo_creat\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_unlink == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lo_unlink\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_lseek == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lo_lseek\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_tell == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lo_tell\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_read == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function loread\n"));
		FUNC6(lobjfuncs);
		return -1;
	}
	if (lobjfuncs->fn_lo_write == 0)
	{
		FUNC9(&conn->errorMessage,
						  FUNC7("cannot determine OID of function lowrite\n"));
		FUNC6(lobjfuncs);
		return -1;
	}

	/*
	 * Put the structure into the connection control
	 */
	conn->lobjfuncs = lobjfuncs;
	return 0;
}