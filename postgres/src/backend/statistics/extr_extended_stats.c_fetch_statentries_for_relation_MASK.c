#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dim1; int /*<<< orphan*/ * values; } ;
struct TYPE_8__ {TYPE_1__ stxkeys; int /*<<< orphan*/  stxstattarget; int /*<<< orphan*/  stxname; int /*<<< orphan*/  stxnamespace; int /*<<< orphan*/  oid; } ;
struct TYPE_7__ {int /*<<< orphan*/  types; int /*<<< orphan*/  columns; int /*<<< orphan*/  stattarget; int /*<<< orphan*/  name; int /*<<< orphan*/  schema; int /*<<< orphan*/  statOid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_2__ StatExtEntry ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_statistic_ext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_statistic_ext_stxkind ; 
 int /*<<< orphan*/  Anum_pg_statistic_ext_stxrelid ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ CHAROID ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATEXTOID ; 
 char STATS_EXT_DEPENDENCIES ; 
 char STATS_EXT_MCV ; 
 char STATS_EXT_NDISTINCT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StatisticExtRelidIndexId ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC23(Relation pg_statext, Oid relid)
{
	SysScanDesc scan;
	ScanKeyData skey;
	HeapTuple	htup;
	List	   *result = NIL;

	/*
	 * Prepare to scan pg_statistic_ext for entries having stxrelid = this
	 * rel.
	 */
	FUNC11(&skey,
				Anum_pg_statistic_ext_stxrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC10(relid));

	scan = FUNC20(pg_statext, StatisticExtRelidIndexId, true,
							  NULL, 1, &skey);

	while (FUNC8(htup = FUNC22(scan)))
	{
		StatExtEntry *entry;
		Datum		datum;
		bool		isnull;
		int			i;
		ArrayType  *arr;
		char	   *enabled;
		Form_pg_statistic_ext staForm;

		entry = FUNC18(sizeof(StatExtEntry));
		staForm = (Form_pg_statistic_ext) FUNC7(htup);
		entry->statOid = staForm->oid;
		entry->schema = FUNC15(staForm->stxnamespace);
		entry->name = FUNC19(FUNC9(staForm->stxname));
		entry->stattarget = staForm->stxstattarget;
		for (i = 0; i < staForm->stxkeys.dim1; i++)
		{
			entry->columns = FUNC13(entry->columns,
											staForm->stxkeys.values[i]);
		}

		/* decode the stxkind char array into a list of chars */
		datum = FUNC12(STATEXTOID, htup,
								Anum_pg_statistic_ext_stxkind, &isnull);
		FUNC5(!isnull);
		arr = FUNC6(datum);
		if (FUNC4(arr) != 1 ||
			FUNC3(arr) ||
			FUNC2(arr) != CHAROID)
			FUNC14(ERROR, "stxkind is not a 1-D char array");
		enabled = (char *) FUNC0(arr);
		for (i = 0; i < FUNC1(arr)[0]; i++)
		{
			FUNC5((enabled[i] == STATS_EXT_NDISTINCT) ||
				   (enabled[i] == STATS_EXT_DEPENDENCIES) ||
				   (enabled[i] == STATS_EXT_MCV));
			entry->types = FUNC17(entry->types, (int) enabled[i]);
		}

		result = FUNC16(result, entry);
	}

	FUNC21(scan);

	return result;
}