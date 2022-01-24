#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  streamConn; } ;
typedef  TYPE_1__ WalReceiverConn ;
typedef  int /*<<< orphan*/  TimeLineID ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC13(WalReceiverConn *conn, TimeLineID *primary_tli)
{
	PGresult   *res;
	char	   *primary_sysid;

	/*
	 * Get the system identifier and timeline ID as a DataRow message from the
	 * primary server.
	 */
	res = FUNC9(conn->streamConn, "IDENTIFY_SYSTEM");
	if (FUNC5(res) != PGRES_TUPLES_OK)
	{
		FUNC0(res);
		FUNC6(ERROR,
				(FUNC8("could not receive database system identifier and timeline ID from "
						"the primary server: %s",
						FUNC10(FUNC1(conn->streamConn)))));
	}
	if (FUNC3(res) < 3 || FUNC4(res) != 1)
	{
		int			ntuples = FUNC4(res);
		int			nfields = FUNC3(res);

		FUNC0(res);
		FUNC6(ERROR,
				(FUNC8("invalid response from primary server"),
				 FUNC7("Could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields.",
						   ntuples, nfields, 3, 1)));
	}
	primary_sysid = FUNC12(FUNC2(res, 0, 0));
	*primary_tli = FUNC11(FUNC2(res, 0, 1));
	FUNC0(res);

	return primary_sysid;
}