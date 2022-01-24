#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct prepared_statement {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {char* stmtID; int /*<<< orphan*/  execs; } ;

/* Variables and functions */
 int FUNC0 (int,char*,char const*,int const,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int /*<<< orphan*/ ,char*,char const*) ; 
 int STMTID_SIZE ; 
 int FUNC2 (char const*) ; 
 struct prepared_statement* FUNC3 (char*,struct connection*,int /*<<< orphan*/ *) ; 
 struct connection* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  nextStmtID ; 
 int /*<<< orphan*/  FUNC7 (int,struct connection*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* stmtCacheEntries ; 

bool
FUNC9(int lineno, const char *connection_name, const int compat, char **name, const char *query)
{
	int			entNo;

	/* search the statement cache for this statement */
	entNo = FUNC2(query);

	/* if not found - add the statement to the cache */
	if (entNo)
	{
		char	   *stmtID;
		struct connection *con;
		struct prepared_statement *prep;

		FUNC5("ecpg_auto_prepare on line %d: statement found in cache; entry %d\n", lineno, entNo);

		stmtID = stmtCacheEntries[entNo].stmtID;

		con = FUNC4(connection_name);
		prep = FUNC3(stmtID, con, NULL);
		/* This prepared name doesn't exist on this connection. */
		if (!prep && !FUNC7(lineno, con, stmtID, query))
			return false;

		*name = FUNC6(stmtID, lineno);
	}
	else
	{
		char		stmtID[STMTID_SIZE];

		FUNC5("ecpg_auto_prepare on line %d: statement not in cache; inserting\n", lineno);

		/* generate a statement ID */
		FUNC8(stmtID, "ecpg%d", nextStmtID++);

		if (!FUNC1(lineno, connection_name, 0, stmtID, query))
			return false;

		entNo = FUNC0(lineno, stmtID, connection_name, compat, query);
		if (entNo < 0)
			return false;

		*name = FUNC6(stmtID, lineno);
	}

	/* increase usage counter */
	stmtCacheEntries[entNo].execs++;

	return true;
}