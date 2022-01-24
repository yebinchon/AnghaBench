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
typedef  int /*<<< orphan*/  xloc ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  sysid ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int XLogRecPtr ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TupOutputState ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DestRemoteSimple ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseId ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* UINT64_FORMAT ; 
 scalar_t__ am_cascading_walsender ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int,...) ; 

__attribute__((used)) static void
FUNC18(void)
{
	char		sysid[32];
	char		xloc[MAXFNAMELEN];
	XLogRecPtr	logptr;
	char	   *dbname = NULL;
	DestReceiver *dest;
	TupOutputState *tstate;
	TupleDesc	tupdesc;
	Datum		values[4];
	bool		nulls[4];

	/*
	 * Reply with a result set with one row, four columns. First col is system
	 * ID, second is timeline ID, third is current xlog location and the
	 * fourth contains the database name if we are connected to one.
	 */

	FUNC17(sysid, sizeof(sysid), UINT64_FORMAT,
			 FUNC6());

	am_cascading_walsender = FUNC10();
	if (am_cascading_walsender)
	{
		/* this also updates ThisTimeLineID */
		logptr = FUNC5();
	}
	else
		logptr = FUNC4();

	FUNC17(xloc, sizeof(xloc), "%X/%X", (uint32) (logptr >> 32), (uint32) logptr);

	if (MyDatabaseId != InvalidOid)
	{
		MemoryContext cur = CurrentMemoryContext;

		/* syscache access needs a transaction env. */
		FUNC11();
		/* make dbname live outside TX context */
		FUNC9(cur);
		dbname = FUNC16(MyDatabaseId);
		FUNC1();
		/* CommitTransactionCommand switches to TopMemoryContext */
		FUNC9(cur);
	}

	dest = FUNC2(DestRemoteSimple);
	FUNC8(nulls, false, sizeof(nulls));

	/* need a tuple descriptor representing four columns */
	tupdesc = FUNC3(4);
	FUNC12(tupdesc, (AttrNumber) 1, "systemid",
							  TEXTOID, -1, 0);
	FUNC12(tupdesc, (AttrNumber) 2, "timeline",
							  INT4OID, -1, 0);
	FUNC12(tupdesc, (AttrNumber) 3, "xlogpos",
							  TEXTOID, -1, 0);
	FUNC12(tupdesc, (AttrNumber) 4, "dbname",
							  TEXTOID, -1, 0);

	/* prepare for projection of tuples */
	tstate = FUNC13(dest, tupdesc, &TTSOpsVirtual);

	/* column 1: system identifier */
	values[0] = FUNC0(sysid);

	/* column 2: timeline */
	values[1] = FUNC7(ThisTimeLineID);

	/* column 3: wal location */
	values[2] = FUNC0(xloc);

	/* column 4: database name, or NULL if none */
	if (dbname)
		values[3] = FUNC0(dbname);
	else
		nulls[3] = true;

	/* send it to dest */
	FUNC14(tstate, values, nulls);

	FUNC15(tstate);
}