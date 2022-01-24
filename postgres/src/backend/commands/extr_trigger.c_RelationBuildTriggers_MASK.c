#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_19__ {int numtriggers; TYPE_3__* triggers; } ;
typedef  TYPE_2__ TriggerDesc ;
struct TYPE_20__ {int tgnargs; int tgnattr; char** tgargs; int /*<<< orphan*/ * tgqual; int /*<<< orphan*/ * tgnewtable; int /*<<< orphan*/ * tgoldtable; int /*<<< orphan*/ * tgattr; int /*<<< orphan*/  tginitdeferred; int /*<<< orphan*/  tgdeferrable; int /*<<< orphan*/  tgconstraint; int /*<<< orphan*/  tgconstrindid; int /*<<< orphan*/  tgconstrrelid; int /*<<< orphan*/  tgisinternal; int /*<<< orphan*/  tgenabled; int /*<<< orphan*/  tgtype; int /*<<< orphan*/  tgfoid; void* tgname; int /*<<< orphan*/  tgoid; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_18__ {int dim1; int /*<<< orphan*/  values; } ;
struct TYPE_22__ {int tgnargs; TYPE_1__ tgattr; int /*<<< orphan*/  tginitdeferred; int /*<<< orphan*/  tgdeferrable; int /*<<< orphan*/  tgconstraint; int /*<<< orphan*/  tgconstrindid; int /*<<< orphan*/  tgconstrrelid; int /*<<< orphan*/  tgisinternal; int /*<<< orphan*/  tgenabled; int /*<<< orphan*/  tgtype; int /*<<< orphan*/  tgfoid; int /*<<< orphan*/  tgname; int /*<<< orphan*/  oid; } ;
struct TYPE_21__ {int /*<<< orphan*/  trigdesc; int /*<<< orphan*/  rd_att; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_5__* Form_pg_trigger ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgargs ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgnewtable ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgoldtable ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgqual ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  TriggerRelidNameIndexId ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nameout ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 char* FUNC22 (char*) ; 
 scalar_t__ FUNC23 (TYPE_3__*,int) ; 
 scalar_t__ FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC30(Relation relation)
{
	TriggerDesc *trigdesc;
	int			numtrigs;
	int			maxtrigs;
	Trigger    *triggers;
	Relation	tgrel;
	ScanKeyData skey;
	SysScanDesc tgscan;
	HeapTuple	htup;
	MemoryContext oldContext;
	int			i;

	/*
	 * Allocate a working array to hold the triggers (the array is extended if
	 * necessary)
	 */
	maxtrigs = 16;
	triggers = (Trigger *) FUNC19(maxtrigs * sizeof(Trigger));
	numtrigs = 0;

	/*
	 * Note: since we scan the triggers using TriggerRelidNameIndexId, we will
	 * be reading the triggers in name order, except possibly during
	 * emergency-recovery operations (ie, IgnoreSystemIndexes). This in turn
	 * ensures that triggers will be fired in name order.
	 */
	FUNC12(&skey,
				Anum_pg_trigger_tgrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(FUNC11(relation)));

	tgrel = FUNC29(TriggerRelationId, AccessShareLock);
	tgscan = FUNC25(tgrel, TriggerRelidNameIndexId, true,
								NULL, 1, &skey);

	while (FUNC6(htup = FUNC27(tgscan)))
	{
		Form_pg_trigger pg_trigger = (Form_pg_trigger) FUNC5(htup);
		Trigger    *build;
		Datum		datum;
		bool		isnull;

		if (numtrigs >= maxtrigs)
		{
			maxtrigs *= 2;
			triggers = (Trigger *) FUNC23(triggers, maxtrigs * sizeof(Trigger));
		}
		build = &(triggers[numtrigs]);

		build->tgoid = pg_trigger->oid;
		build->tgname = FUNC2(FUNC3(nameout,
															FUNC8(&pg_trigger->tgname)));
		build->tgfoid = pg_trigger->tgfoid;
		build->tgtype = pg_trigger->tgtype;
		build->tgenabled = pg_trigger->tgenabled;
		build->tgisinternal = pg_trigger->tgisinternal;
		build->tgconstrrelid = pg_trigger->tgconstrrelid;
		build->tgconstrindid = pg_trigger->tgconstrindid;
		build->tgconstraint = pg_trigger->tgconstraint;
		build->tgdeferrable = pg_trigger->tgdeferrable;
		build->tginitdeferred = pg_trigger->tginitdeferred;
		build->tgnargs = pg_trigger->tgnargs;
		/* tgattr is first var-width field, so OK to access directly */
		build->tgnattr = pg_trigger->tgattr.dim1;
		if (build->tgnattr > 0)
		{
			build->tgattr = (int16 *) FUNC19(build->tgnattr * sizeof(int16));
			FUNC18(build->tgattr, &(pg_trigger->tgattr.values),
				   build->tgnattr * sizeof(int16));
		}
		else
			build->tgattr = NULL;
		if (build->tgnargs > 0)
		{
			bytea	   *val;
			char	   *p;

			val = FUNC1(FUNC17(htup,
											  Anum_pg_trigger_tgargs,
											  tgrel->rd_att, &isnull));
			if (isnull)
				FUNC16(ERROR, "tgargs is null in trigger for relation \"%s\"",
					 FUNC10(relation));
			p = (char *) FUNC15(val);
			build->tgargs = (char **) FUNC19(build->tgnargs * sizeof(char *));
			for (i = 0; i < build->tgnargs; i++)
			{
				build->tgargs[i] = FUNC22(p);
				p += FUNC24(p) + 1;
			}
		}
		else
			build->tgargs = NULL;

		datum = FUNC17(htup, Anum_pg_trigger_tgoldtable,
							tgrel->rd_att, &isnull);
		if (!isnull)
			build->tgoldtable =
				FUNC2(FUNC3(nameout, datum));
		else
			build->tgoldtable = NULL;

		datum = FUNC17(htup, Anum_pg_trigger_tgnewtable,
							tgrel->rd_att, &isnull);
		if (!isnull)
			build->tgnewtable =
				FUNC2(FUNC3(nameout, datum));
		else
			build->tgnewtable = NULL;

		datum = FUNC17(htup, Anum_pg_trigger_tgqual,
							tgrel->rd_att, &isnull);
		if (!isnull)
			build->tgqual = FUNC14(datum);
		else
			build->tgqual = NULL;

		numtrigs++;
	}

	FUNC26(tgscan);
	FUNC28(tgrel, AccessShareLock);

	/* There might not be any triggers */
	if (numtrigs == 0)
	{
		FUNC21(triggers);
		return;
	}

	/* Build trigdesc */
	trigdesc = (TriggerDesc *) FUNC20(sizeof(TriggerDesc));
	trigdesc->triggers = triggers;
	trigdesc->numtriggers = numtrigs;
	for (i = 0; i < numtrigs; i++)
		FUNC13(trigdesc, &(triggers[i]));

	/* Copy completed trigdesc into cache storage */
	oldContext = FUNC7(CacheMemoryContext);
	relation->trigdesc = FUNC0(trigdesc);
	FUNC7(oldContext);

	/* Release working memory */
	FUNC4(trigdesc);
}