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
struct TYPE_7__ {void* status; int /*<<< orphan*/  errorMessage; } ;
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 void* CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (char const* const*,char const* const*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 

PGconn *
FUNC6(const char *const *keywords,
					 const char *const *values,
					 int expand_dbname)
{
	PGconn	   *conn;
	PQconninfoOption *connOptions;

	/*
	 * Allocate memory for the conn structure
	 */
	conn = FUNC5();
	if (conn == NULL)
		return NULL;

	/*
	 * Parse the conninfo arrays
	 */
	connOptions = FUNC3(keywords, values,
									   &conn->errorMessage,
									   true, expand_dbname);
	if (connOptions == NULL)
	{
		conn->status = CONNECTION_BAD;
		/* errorMessage is already set */
		return conn;
	}

	/*
	 * Move option values into conn structure
	 */
	if (!FUNC4(conn, connOptions))
	{
		FUNC0(connOptions);
		return conn;
	}

	/*
	 * Free the option info - all is in conn now
	 */
	FUNC0(connOptions);

	/*
	 * Compute derived options
	 */
	if (!FUNC2(conn))
		return conn;

	/*
	 * Connect to the database
	 */
	if (!FUNC1(conn))
	{
		/* Just in case we failed to set it in connectDBStart */
		conn->status = CONNECTION_BAD;
	}

	return conn;
}