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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void
FUNC5(PGconn *conn, const char *sql, bool echo,
				   const char *table)
{
	bool		status;

	if (echo)
		FUNC4("%s\n", sql);

	status = FUNC2(conn, sql) == 1;

	if (!status)
	{
		if (table)
			FUNC3("vacuuming of table \"%s\" in database \"%s\" failed: %s",
						 table, FUNC0(conn), FUNC1(conn));
		else
			FUNC3("vacuuming of database \"%s\" failed: %s",
						 FUNC0(conn), FUNC1(conn));
	}
}