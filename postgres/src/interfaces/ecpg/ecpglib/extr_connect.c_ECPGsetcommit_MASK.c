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
struct connection {int autocommit; int /*<<< orphan*/  connection; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_COMPAT_PGSQL ; 
 scalar_t__ PQTRANS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct connection* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 

bool
FUNC9(int lineno, const char *mode, const char *connection_name)
{
	struct connection *con = FUNC4(connection_name);
	PGresult   *results;

	if (!FUNC5(con, connection_name, lineno))
		return false;

	FUNC6("ECPGsetcommit on line %d: action \"%s\"; connection \"%s\"\n", lineno, mode, con->name);

	if (con->autocommit && FUNC8(mode, "off", FUNC7("off")) == 0)
	{
		if (FUNC2(con->connection) == PQTRANS_IDLE)
		{
			results = FUNC1(con->connection, "begin transaction");
			if (!FUNC3(results, lineno, con->connection, ECPG_COMPAT_PGSQL))
				return false;
			FUNC0(results);
		}
		con->autocommit = false;
	}
	else if (!con->autocommit && FUNC8(mode, "on", FUNC7("on")) == 0)
	{
		if (FUNC2(con->connection) != PQTRANS_IDLE)
		{
			results = FUNC1(con->connection, "commit");
			if (!FUNC3(results, lineno, con->connection, ECPG_COMPAT_PGSQL))
				return false;
			FUNC0(results);
		}
		con->autocommit = true;
	}

	return true;
}