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
struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_INVALID_STMT ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_INVALID_SQL_STATEMENT_NAME ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int,struct connection*,struct prepared_statement*,struct prepared_statement*) ; 
 struct prepared_statement* FUNC2 (char const*,struct connection*,struct prepared_statement**) ; 
 struct connection* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

bool
FUNC6(int lineno, int c, const char *connection_name, const char *name)
{
	struct connection *con;
	struct prepared_statement *this,
			   *prev;

	con = FUNC3(connection_name);
	if (!FUNC4(con, connection_name, lineno))
		return false;

	this = FUNC2(name, con, &prev);
	if (this)
		return FUNC1(lineno, c, con, prev, this);

	/* prepared statement is not found */
	if (FUNC0(c))
		return true;
	FUNC5(lineno, ECPG_INVALID_STMT, ECPG_SQLSTATE_INVALID_SQL_STATEMENT_NAME, name);
	return false;
}