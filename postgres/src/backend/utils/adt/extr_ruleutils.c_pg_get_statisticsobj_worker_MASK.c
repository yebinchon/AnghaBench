#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dim1; int /*<<< orphan*/ * values; } ;
struct TYPE_10__ {int /*<<< orphan*/  stxrelid; TYPE_1__ stxkeys; int /*<<< orphan*/  stxname; int /*<<< orphan*/  stxnamespace; } ;
struct TYPE_9__ {char* data; } ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_statistic_ext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_statistic_ext_stxkind ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ CHAROID ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATEXTOID ; 
 char STATS_EXT_DEPENDENCIES ; 
 char STATS_EXT_MCV ; 
 char STATS_EXT_NDISTINCT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 char* FUNC22 (char*) ; 
 char* FUNC23 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC24(Oid statextid, bool missing_ok)
{
	Form_pg_statistic_ext statextrec;
	HeapTuple	statexttup;
	StringInfoData buf;
	int			colno;
	char	   *nsp;
	ArrayType  *arr;
	char	   *enabled;
	Datum		datum;
	bool		isnull;
	bool		ndistinct_enabled;
	bool		dependencies_enabled;
	bool		mcv_enabled;
	int			i;

	statexttup = FUNC12(STATEXTOID, FUNC10(statextid));

	if (!FUNC8(statexttup))
	{
		if (missing_ok)
			return NULL;
		FUNC17(ERROR, "cache lookup failed for statistics object %u", statextid);
	}

	statextrec = (Form_pg_statistic_ext) FUNC7(statexttup);

	FUNC21(&buf);

	nsp = FUNC20(statextrec->stxnamespace);
	FUNC14(&buf, "CREATE STATISTICS %s",
					 FUNC23(nsp,
												FUNC9(statextrec->stxname)));

	/*
	 * Decode the stxkind column so that we know which stats types to print.
	 */
	datum = FUNC13(STATEXTOID, statexttup,
							Anum_pg_statistic_ext_stxkind, &isnull);
	FUNC5(!isnull);
	arr = FUNC6(datum);
	if (FUNC4(arr) != 1 ||
		FUNC3(arr) ||
		FUNC2(arr) != CHAROID)
		FUNC17(ERROR, "stxkind is not a 1-D char array");
	enabled = (char *) FUNC0(arr);

	ndistinct_enabled = false;
	dependencies_enabled = false;
	mcv_enabled = false;

	for (i = 0; i < FUNC1(arr)[0]; i++)
	{
		if (enabled[i] == STATS_EXT_NDISTINCT)
			ndistinct_enabled = true;
		if (enabled[i] == STATS_EXT_DEPENDENCIES)
			dependencies_enabled = true;
		if (enabled[i] == STATS_EXT_MCV)
			mcv_enabled = true;
	}

	/*
	 * If any option is disabled, then we'll need to append the types clause
	 * to show which options are enabled.  We omit the types clause on purpose
	 * when all options are enabled, so a pg_dump/pg_restore will create all
	 * statistics types on a newer postgres version, if the statistics had all
	 * options enabled on the original version.
	 */
	if (!ndistinct_enabled || !dependencies_enabled || !mcv_enabled)
	{
		bool		gotone = false;

		FUNC16(&buf, " (");

		if (ndistinct_enabled)
		{
			FUNC16(&buf, "ndistinct");
			gotone = true;
		}

		if (dependencies_enabled)
		{
			FUNC14(&buf, "%sdependencies", gotone ? ", " : "");
			gotone = true;
		}

		if (mcv_enabled)
			FUNC14(&buf, "%smcv", gotone ? ", " : "");

		FUNC15(&buf, ')');
	}

	FUNC16(&buf, " ON ");

	for (colno = 0; colno < statextrec->stxkeys.dim1; colno++)
	{
		AttrNumber	attnum = statextrec->stxkeys.values[colno];
		char	   *attname;

		if (colno > 0)
			FUNC16(&buf, ", ");

		attname = FUNC19(statextrec->stxrelid, attnum, false);

		FUNC16(&buf, FUNC22(attname));
	}

	FUNC14(&buf, " FROM %s",
					 FUNC18(statextrec->stxrelid, NIL));

	FUNC11(statexttup);

	return buf.data;
}