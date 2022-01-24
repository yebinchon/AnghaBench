#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  float4 ;
struct TYPE_15__ {int* numnumbers; int* numvalues; int* statyplen; char* statypalign; TYPE_1__* attr; int /*<<< orphan*/ * statypbyval; int /*<<< orphan*/ * statypid; scalar_t__** stavalues; int /*<<< orphan*/ ** stanumbers; int /*<<< orphan*/ * stacoll; int /*<<< orphan*/ * staop; int /*<<< orphan*/ * stakind; int /*<<< orphan*/  stadistinct; int /*<<< orphan*/  stawidth; int /*<<< orphan*/  stanullfrac; int /*<<< orphan*/  stats_valid; } ;
typedef  TYPE_2__ VacAttrStats ;
struct TYPE_16__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_14__ {int /*<<< orphan*/  attnum; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__* HeapTuple ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int Anum_pg_statistic_staattnum ; 
 int Anum_pg_statistic_stacoll1 ; 
 int Anum_pg_statistic_stadistinct ; 
 int Anum_pg_statistic_stainherit ; 
 int Anum_pg_statistic_stakind1 ; 
 int Anum_pg_statistic_stanullfrac ; 
 int Anum_pg_statistic_stanumbers1 ; 
 int Anum_pg_statistic_staop1 ; 
 int Anum_pg_statistic_starelid ; 
 int Anum_pg_statistic_stavalues1 ; 
 int Anum_pg_statistic_stawidth ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FLOAT4OID ; 
 int /*<<< orphan*/  FLOAT4PASSBYVAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int Natts_pg_statistic ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int STATISTIC_NUM_SLOTS ; 
 int /*<<< orphan*/  STATRELATTINH ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  StatisticRelationId ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 TYPE_3__* FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,int*,int*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(Oid relid, bool inh, int natts, VacAttrStats **vacattrstats)
{
	Relation	sd;
	int			attno;

	if (natts <= 0)
		return;					/* nothing to do */

	sd = FUNC18(StatisticRelationId, RowExclusiveLock);

	for (attno = 0; attno < natts; attno++)
	{
		VacAttrStats *stats = vacattrstats[attno];
		HeapTuple	stup,
					oldtup;
		int			i,
					k,
					n;
		Datum		values[Natts_pg_statistic];
		bool		nulls[Natts_pg_statistic];
		bool		replaces[Natts_pg_statistic];

		/* Ignore attr if we weren't able to collect stats */
		if (!stats->stats_valid)
			continue;

		/*
		 * Construct a new pg_statistic tuple
		 */
		for (i = 0; i < Natts_pg_statistic; ++i)
		{
			nulls[i] = false;
			replaces[i] = true;
		}

		values[Anum_pg_statistic_starelid - 1] = FUNC7(relid);
		values[Anum_pg_statistic_staattnum - 1] = FUNC5(stats->attr->attnum);
		values[Anum_pg_statistic_stainherit - 1] = FUNC0(inh);
		values[Anum_pg_statistic_stanullfrac - 1] = FUNC3(stats->stanullfrac);
		values[Anum_pg_statistic_stawidth - 1] = FUNC6(stats->stawidth);
		values[Anum_pg_statistic_stadistinct - 1] = FUNC3(stats->stadistinct);
		i = Anum_pg_statistic_stakind1 - 1;
		for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
		{
			values[i++] = FUNC5(stats->stakind[k]); /* stakindN */
		}
		i = Anum_pg_statistic_staop1 - 1;
		for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
		{
			values[i++] = FUNC7(stats->staop[k]);	/* staopN */
		}
		i = Anum_pg_statistic_stacoll1 - 1;
		for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
		{
			values[i++] = FUNC7(stats->stacoll[k]);	/* stacollN */
		}
		i = Anum_pg_statistic_stanumbers1 - 1;
		for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
		{
			int			nnum = stats->numnumbers[k];

			if (nnum > 0)
			{
				Datum	   *numdatums = (Datum *) FUNC16(nnum * sizeof(Datum));
				ArrayType  *arry;

				for (n = 0; n < nnum; n++)
					numdatums[n] = FUNC3(stats->stanumbers[k][n]);
				/* XXX knows more than it should about type float4: */
				arry = FUNC12(numdatums, nnum,
									   FLOAT4OID,
									   sizeof(float4), FLOAT4PASSBYVAL, 'i');
				values[i++] = FUNC8(arry);	/* stanumbersN */
			}
			else
			{
				nulls[i] = true;
				values[i++] = (Datum) 0;
			}
		}
		i = Anum_pg_statistic_stavalues1 - 1;
		for (k = 0; k < STATISTIC_NUM_SLOTS; k++)
		{
			if (stats->numvalues[k] > 0)
			{
				ArrayType  *arry;

				arry = FUNC12(stats->stavalues[k],
									   stats->numvalues[k],
									   stats->statypid[k],
									   stats->statyplen[k],
									   stats->statypbyval[k],
									   stats->statypalign[k]);
				values[i++] = FUNC8(arry);	/* stavaluesN */
			}
			else
			{
				nulls[i] = true;
				values[i++] = (Datum) 0;
			}
		}

		/* Is there already a pg_statistic tuple for this attribute? */
		oldtup = FUNC11(STATRELATTINH,
								 FUNC7(relid),
								 FUNC5(stats->attr->attnum),
								 FUNC0(inh));

		if (FUNC4(oldtup))
		{
			/* Yes, replace it */
			stup = FUNC15(oldtup,
									 FUNC9(sd),
									 values,
									 nulls,
									 replaces);
			FUNC10(oldtup);
			FUNC2(sd, &stup->t_self, stup);
		}
		else
		{
			/* No, insert new tuple */
			stup = FUNC13(FUNC9(sd), values, nulls);
			FUNC1(sd, stup);
		}

		FUNC14(stup);
	}

	FUNC17(sd, RowExclusiveLock);
}