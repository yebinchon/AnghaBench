#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_val ;
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_11__ {int stxstattarget; int /*<<< orphan*/  defnames; int /*<<< orphan*/  missing_ok; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;
typedef  TYPE_2__ AlterStatsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int Anum_pg_statistic_ext_stxstattarget ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int Natts_pg_statistic_ext ; 
 int /*<<< orphan*/  OBJECT_STATISTIC_EXT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  STATEXTOID ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StatisticExtRelationId ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC20 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC24(AlterStatsStmt *stmt)
{
	Relation	rel;
	Oid			stxoid;
	HeapTuple	oldtup;
	HeapTuple	newtup;
	Datum		repl_val[Natts_pg_statistic_ext];
	bool		repl_null[Natts_pg_statistic_ext];
	bool		repl_repl[Natts_pg_statistic_ext];
	ObjectAddress	address;
	int			newtarget = stmt->stxstattarget;

	/* Limit statistics target to a sane range */
	if (newtarget < -1)
	{
		FUNC14(ERROR,
				(FUNC15(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC16("statistics target %d is too low",
						newtarget)));
	}
	else if (newtarget > 10000)
	{
		newtarget = 10000;
		FUNC14(WARNING,
				(FUNC15(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC16("lowering statistics target to %d",
						newtarget)));
	}

	/* lookup OID of the statistics object */
	stxoid = FUNC17(stmt->defnames, stmt->missing_ok);

	/*
	 * If we got here and the OID is not valid, it means the statistics
	 * does not exist, but the command specified IF EXISTS. So report
	 * this as a simple NOTICE and we're done.
	 */
	if (!FUNC9(stxoid))
	{
		char	   *schemaname;
		char	   *statname;

		FUNC0(stmt->missing_ok);

		FUNC2(stmt->defnames, &schemaname, &statname);

		if (schemaname)
			FUNC14(NOTICE,
					(FUNC16("statistics object \"%s.%s\" does not exist, skipping",
							schemaname, statname)));
		else
			FUNC14(NOTICE,
					(FUNC16("statistics object \"%s\" does not exist, skipping",
							statname)));

		return InvalidObjectAddress;
	}

	/* Search pg_statistic_ext */
	rel = FUNC23(StatisticExtRelationId, RowExclusiveLock);

	oldtup = FUNC12(STATEXTOID, FUNC8(stxoid));

	/* Must be owner of the existing statistics object */
	if (!FUNC21(stxoid, FUNC3()))
		FUNC13(ACLCHECK_NOT_OWNER, OBJECT_STATISTIC_EXT,
					   FUNC6(stmt->defnames));

	/* Build new tuple. */
	FUNC20(repl_val, 0, sizeof(repl_val));
	FUNC20(repl_null, false, sizeof(repl_null));
	FUNC20(repl_repl, false, sizeof(repl_repl));

	/* replace the stxstattarget column */
	repl_repl[Anum_pg_statistic_ext_stxstattarget - 1] = true;
	repl_val[Anum_pg_statistic_ext_stxstattarget - 1] = FUNC4(newtarget);

	newtup = FUNC19(oldtup, FUNC10(rel),
							   repl_val, repl_null, repl_repl);

	/* Update system catalog. */
	FUNC1(rel, &newtup->t_self, newtup);

	FUNC5(StatisticExtRelationId, stxoid, 0);

	FUNC7(address, StatisticExtRelationId, stxoid);

	/*
	 * NOTE: because we only support altering the statistics target, not the
	 * other fields, there is no need to update dependencies.
	 */

	FUNC18(newtup);
	FUNC11(oldtup);

	FUNC22(rel, RowExclusiveLock);

	return address;
}