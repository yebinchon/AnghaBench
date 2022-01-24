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
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int /*<<< orphan*/  streamConn; int /*<<< orphan*/  logical; } ;
typedef  TYPE_1__ WalReceiverConn ;
typedef  int TimeLineID ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC17(WalReceiverConn *conn,
								 TimeLineID tli, char **filename,
								 char **content, int *len)
{
	PGresult   *res;
	char		cmd[64];

	FUNC0(!conn->logical);

	/*
	 * Request the primary to send over the history file for given timeline.
	 */
	FUNC16(cmd, sizeof(cmd), "TIMELINE_HISTORY %u", tli);
	res = FUNC11(conn->streamConn, cmd);
	if (FUNC7(res) != PGRES_TUPLES_OK)
	{
		FUNC1(res);
		FUNC8(ERROR,
				(FUNC10("could not receive timeline history file from "
						"the primary server: %s",
						FUNC14(FUNC2(conn->streamConn)))));
	}
	if (FUNC5(res) != 2 || FUNC6(res) != 1)
	{
		int			ntuples = FUNC6(res);
		int			nfields = FUNC5(res);

		FUNC1(res);
		FUNC8(ERROR,
				(FUNC10("invalid response from primary server"),
				 FUNC9("Expected 1 tuple with 2 fields, got %d tuples with %d fields.",
						   ntuples, nfields)));
	}
	*filename = FUNC15(FUNC4(res, 0, 0));

	*len = FUNC3(res, 0, 1);
	*content = FUNC13(*len);
	FUNC12(*content, FUNC4(res, 0, 1), *len);
	FUNC1(res);
}