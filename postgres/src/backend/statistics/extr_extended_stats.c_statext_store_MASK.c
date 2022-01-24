#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  VacAttrStats ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MVNDistinct ;
typedef  int /*<<< orphan*/  MVDependencies ;
typedef  int /*<<< orphan*/  MCVList ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_statistic_ext_data_stxddependencies ; 
 int Anum_pg_statistic_ext_data_stxdmcv ; 
 int Anum_pg_statistic_ext_data_stxdndistinct ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int Natts_pg_statistic_ext_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  STATEXTDATASTXOID ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StatisticExtDataRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(Oid statOid,
			  MVNDistinct *ndistinct, MVDependencies *dependencies,
			  MCVList *mcv, VacAttrStats **stats)
{
	HeapTuple	stup,
				oldtup;
	Datum		values[Natts_pg_statistic_ext_data];
	bool		nulls[Natts_pg_statistic_ext_data];
	bool		replaces[Natts_pg_statistic_ext_data];
	Relation	pg_stextdata;

	FUNC10(nulls, true, sizeof(nulls));
	FUNC10(replaces, false, sizeof(replaces));
	FUNC10(values, 0, sizeof(values));

	/*
	 * Construct a new pg_statistic_ext_data tuple, replacing the calculated
	 * stats.
	 */
	if (ndistinct != NULL)
	{
		bytea	   *data = FUNC13(ndistinct);

		nulls[Anum_pg_statistic_ext_data_stxdndistinct - 1] = (data == NULL);
		values[Anum_pg_statistic_ext_data_stxdndistinct - 1] = FUNC3(data);
	}

	if (dependencies != NULL)
	{
		bytea	   *data = FUNC11(dependencies);

		nulls[Anum_pg_statistic_ext_data_stxddependencies - 1] = (data == NULL);
		values[Anum_pg_statistic_ext_data_stxddependencies - 1] = FUNC3(data);
	}
	if (mcv != NULL)
	{
		bytea	   *data = FUNC12(mcv, stats);

		nulls[Anum_pg_statistic_ext_data_stxdmcv - 1] = (data == NULL);
		values[Anum_pg_statistic_ext_data_stxdmcv - 1] = FUNC3(data);
	}

	/* always replace the value (either by bytea or NULL) */
	replaces[Anum_pg_statistic_ext_data_stxdndistinct - 1] = true;
	replaces[Anum_pg_statistic_ext_data_stxddependencies - 1] = true;
	replaces[Anum_pg_statistic_ext_data_stxdmcv - 1] = true;

	/* there should already be a pg_statistic_ext_data tuple */
	oldtup = FUNC6(STATEXTDATASTXOID, FUNC2(statOid));
	if (!FUNC1(oldtup))
		FUNC7(ERROR, "cache lookup failed for statistics object %u", statOid);

	/* replace it */
	pg_stextdata = FUNC15(StatisticExtDataRelationId, RowExclusiveLock);

	stup = FUNC9(oldtup,
							 FUNC4(pg_stextdata),
							 values,
							 nulls,
							 replaces);
	FUNC5(oldtup);
	FUNC0(pg_stextdata, &stup->t_self, stup);

	FUNC8(stup);

	FUNC14(pg_stextdata, RowExclusiveLock);
}