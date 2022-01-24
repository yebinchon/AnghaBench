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
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int XLogRecPtr ;
typedef  int /*<<< orphan*/  TimeLineID ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int*,int*) ; 

bool
FUNC14(PGconn *conn, char **sysid, TimeLineID *starttli,
				  XLogRecPtr *startpos, char **db_name)
{
	PGresult   *res;
	uint32		hi,
				lo;

	/* Check connection existence */
	FUNC0(conn != NULL);

	res = FUNC3(conn, "IDENTIFY_SYSTEM");
	if (FUNC8(res) != PGRES_TUPLES_OK)
	{
		FUNC11("could not send replication command \"%s\": %s",
					 "IDENTIFY_SYSTEM", FUNC2(conn));

		FUNC1(res);
		return false;
	}
	if (FUNC7(res) != 1 || FUNC6(res) < 3)
	{
		FUNC11("could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields",
					 FUNC7(res), FUNC6(res), 1, 3);

		FUNC1(res);
		return false;
	}

	/* Get system identifier */
	if (sysid != NULL)
		*sysid = FUNC12(FUNC5(res, 0, 0));

	/* Get timeline ID to start streaming from */
	if (starttli != NULL)
		*starttli = FUNC10(FUNC5(res, 0, 1));

	/* Get LSN start position if necessary */
	if (startpos != NULL)
	{
		if (FUNC13(FUNC5(res, 0, 2), "%X/%X", &hi, &lo) != 2)
		{
			FUNC11("could not parse write-ahead log location \"%s\"",
						 FUNC5(res, 0, 2));

			FUNC1(res);
			return false;
		}
		*startpos = ((uint64) hi) << 32 | lo;
	}

	/* Get database name, only available in 9.4 and newer versions */
	if (db_name != NULL)
	{
		*db_name = NULL;
		if (FUNC9(conn) >= 90400)
		{
			if (FUNC6(res) < 4)
			{
				FUNC11("could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields",
							 FUNC7(res), FUNC6(res), 1, 4);

				FUNC1(res);
				return false;
			}
			if (!FUNC4(res, 0, 3))
				*db_name = FUNC12(FUNC5(res, 0, 3));
		}
	}

	FUNC1(res);
	return true;
}