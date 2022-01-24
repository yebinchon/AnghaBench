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
struct connection {int /*<<< orphan*/  name; int /*<<< orphan*/ * connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_NOT_CONN ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_INTERNAL_ERROR ; 
 struct connection* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC3(int lineno, const char *connection_name)
{
	struct connection *con = FUNC0(connection_name);

	if (!FUNC1(con, connection_name, lineno))
		return false;

	/* are we connected? */
	if (con->connection == NULL)
	{
		FUNC2(lineno, ECPG_NOT_CONN, ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, con->name);
		return false;
	}

	return true;
}