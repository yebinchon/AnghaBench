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
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC10(const char *sql)
{
	PGresult   *res;
	char	   *result;

	res = FUNC1(conn, sql);

	if (FUNC7(res) != PGRES_TUPLES_OK)
		FUNC8("error running query (%s) in source server: %s",
				 sql, FUNC6(res));

	/* sanity check the result set */
	if (FUNC4(res) != 1 || FUNC5(res) != 1 || FUNC2(res, 0, 0))
		FUNC8("unexpected result set from query");

	result = FUNC9(FUNC3(res, 0, 0));

	FUNC0(res);

	return result;
}