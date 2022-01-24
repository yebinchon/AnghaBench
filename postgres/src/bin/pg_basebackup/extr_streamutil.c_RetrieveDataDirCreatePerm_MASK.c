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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINIMUM_VERSION_FOR_GROUP_ACCESS ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static bool
FUNC12(PGconn *conn)
{
	PGresult   *res;
	int			data_directory_mode;

	/* check connection existence */
	FUNC0(conn != NULL);

	/* for previous versions leave the default group access */
	if (FUNC8(conn) < MINIMUM_VERSION_FOR_GROUP_ACCESS)
		return true;

	res = FUNC3(conn, "SHOW data_directory_mode");
	if (FUNC7(res) != PGRES_TUPLES_OK)
	{
		FUNC10("could not send replication command \"%s\": %s",
					 "SHOW data_directory_mode", FUNC2(conn));

		FUNC1(res);
		return false;
	}
	if (FUNC6(res) != 1 || FUNC5(res) < 1)
	{
		FUNC10("could not fetch group access flag: got %d rows and %d fields, expected %d rows and %d or more fields",
					 FUNC6(res), FUNC5(res), 1, 1);

		FUNC1(res);
		return false;
	}

	if (FUNC11(FUNC4(res, 0, 0), "%o", &data_directory_mode) != 1)
	{
		FUNC10("group access flag could not be parsed: %s",
					 FUNC4(res, 0, 0));

		FUNC1(res);
		return false;
	}

	FUNC9(data_directory_mode);

	FUNC1(res);
	return true;
}