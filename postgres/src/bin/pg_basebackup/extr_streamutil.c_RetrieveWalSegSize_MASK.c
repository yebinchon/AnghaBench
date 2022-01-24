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
 int DEFAULT_XLOG_SEG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MINIMUM_VERSION_FOR_SHOW_CMD ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int WalSegSz ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

bool
FUNC14(PGconn *conn)
{
	PGresult   *res;
	char		xlog_unit[3];
	int			xlog_val,
				multiplier = 1;

	/* check connection existence */
	FUNC0(conn != NULL);

	/* for previous versions set the default xlog seg size */
	if (FUNC9(conn) < MINIMUM_VERSION_FOR_SHOW_CMD)
	{
		WalSegSz = DEFAULT_XLOG_SEG_SIZE;
		return true;
	}

	res = FUNC4(conn, "SHOW wal_segment_size");
	if (FUNC8(res) != PGRES_TUPLES_OK)
	{
		FUNC11("could not send replication command \"%s\": %s",
					 "SHOW wal_segment_size", FUNC3(conn));

		FUNC2(res);
		return false;
	}
	if (FUNC7(res) != 1 || FUNC6(res) < 1)
	{
		FUNC11("could not fetch WAL segment size: got %d rows and %d fields, expected %d rows and %d or more fields",
					 FUNC7(res), FUNC6(res), 1, 1);

		FUNC2(res);
		return false;
	}

	/* fetch xlog value and unit from the result */
	if (FUNC12(FUNC5(res, 0, 0), "%d%s", &xlog_val, xlog_unit) != 2)
	{
		FUNC11("WAL segment size could not be parsed");
		return false;
	}

	/* set the multiplier based on unit to convert xlog_val to bytes */
	if (FUNC13(xlog_unit, "MB") == 0)
		multiplier = 1024 * 1024;
	else if (FUNC13(xlog_unit, "GB") == 0)
		multiplier = 1024 * 1024 * 1024;

	/* convert and set WalSegSz */
	WalSegSz = xlog_val * multiplier;

	if (!FUNC1(WalSegSz))
	{
		FUNC11(FUNC10("WAL segment size must be a power of two between 1 MB and 1 GB, but the remote server reported a value of %d byte",
							  "WAL segment size must be a power of two between 1 MB and 1 GB, but the remote server reported a value of %d bytes",
							  WalSegSz),
					 WalSegSz);
		return false;
	}

	FUNC2(res);
	return true;
}