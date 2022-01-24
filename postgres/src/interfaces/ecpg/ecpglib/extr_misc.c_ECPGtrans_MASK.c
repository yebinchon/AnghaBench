#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connection {char* name; scalar_t__ connection; int /*<<< orphan*/  autocommit; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_COMPAT_PGSQL ; 
 scalar_t__ PQTRANS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,char const*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct connection* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

bool
FUNC8(int lineno, const char *connection_name, const char *transaction)
{
	PGresult   *res;
	struct connection *con = FUNC4(connection_name);

	if (!FUNC5(con, connection_name, lineno))
		return false;

	FUNC6("ECPGtrans on line %d: action \"%s\"; connection \"%s\"\n", lineno, transaction, con ? con->name : "null");

	/* if we have no connection we just simulate the command */
	if (con && con->connection)
	{
		/*
		 * If we got a transaction command but have no open transaction, we
		 * have to start one, unless we are in autocommit, where the
		 * developers have to take care themselves. However, if the command is
		 * a begin statement, we just execute it once. And if the command is
		 * commit or rollback prepared, we don't execute it.
		 */
		if (FUNC2(con->connection) == PQTRANS_IDLE &&
			!con->autocommit &&
			FUNC7(transaction, "begin", 5) != 0 &&
			FUNC7(transaction, "start", 5) != 0 &&
			FUNC7(transaction, "commit prepared", 15) != 0 &&
			FUNC7(transaction, "rollback prepared", 17) != 0)
		{
			res = FUNC1(con->connection, "begin transaction");
			if (!FUNC3(res, lineno, con->connection, ECPG_COMPAT_PGSQL))
				return false;
			FUNC0(res);
		}

		res = FUNC1(con->connection, transaction);
		if (!FUNC3(res, lineno, con->connection, ECPG_COMPAT_PGSQL))
			return false;
		FUNC0(res);
	}

	return true;
}