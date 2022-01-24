#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  streamConn; scalar_t__ logical; } ;
typedef  TYPE_1__ WalReceiverConn ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int CRSSnapshotAction ;

/* Variables and functions */
#define  CRS_EXPORT_SNAPSHOT 130 
#define  CRS_NOEXPORT_SNAPSHOT 129 
#define  CRS_USE_SNAPSHOT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_lsn_in ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC17(WalReceiverConn *conn, const char *slotname,
					 bool temporary, CRSSnapshotAction snapshot_action,
					 XLogRecPtr *lsn)
{
	PGresult   *res;
	StringInfoData cmd;
	char	   *snapshot;

	FUNC12(&cmd);

	FUNC8(&cmd, "CREATE_REPLICATION_SLOT \"%s\"", slotname);

	if (temporary)
		FUNC9(&cmd, " TEMPORARY");

	if (conn->logical)
	{
		FUNC9(&cmd, " LOGICAL pgoutput");
		switch (snapshot_action)
		{
			case CRS_EXPORT_SNAPSHOT:
				FUNC9(&cmd, " EXPORT_SNAPSHOT");
				break;
			case CRS_NOEXPORT_SNAPSHOT:
				FUNC9(&cmd, " NOEXPORT_SNAPSHOT");
				break;
			case CRS_USE_SNAPSHOT:
				FUNC9(&cmd, " USE_SNAPSHOT");
				break;
		}
	}

	res = FUNC13(conn->streamConn, cmd.data);
	FUNC15(cmd.data);

	if (FUNC7(res) != PGRES_TUPLES_OK)
	{
		FUNC3(res);
		FUNC10(ERROR,
				(FUNC11("could not create replication slot \"%s\": %s",
						slotname, FUNC14(FUNC4(conn->streamConn)))));
	}

	*lsn = FUNC1(FUNC2(pg_lsn_in, InvalidOid,
											   FUNC0(FUNC6(res, 0, 1))));
	if (!FUNC5(res, 0, 2))
		snapshot = FUNC16(FUNC6(res, 0, 2));
	else
		snapshot = NULL;

	FUNC3(res);

	return snapshot;
}