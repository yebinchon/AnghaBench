#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {char tgenabled; int /*<<< orphan*/  oid; int /*<<< orphan*/  tgname; int /*<<< orphan*/  tgtype; scalar_t__ tgisinternal; } ;
struct TYPE_27__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_26__ {int nparts; int /*<<< orphan*/ * oids; } ;
struct TYPE_25__ {TYPE_1__* rd_rel; } ;
struct TYPE_24__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* PartitionDesc ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* Form_pg_trigger ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_trigger_tgname ; 
 int /*<<< orphan*/  Anum_pg_trigger_tgrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 TYPE_3__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TriggerRelationId ; 
 int /*<<< orphan*/  TriggerRelidNameIndexId ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,...) ; 
 TYPE_4__* FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC25(Relation rel, const char *tgname,
					 char fires_when, bool skip_system, LOCKMODE lockmode)
{
	Relation	tgrel;
	int			nkeys;
	ScanKeyData keys[2];
	SysScanDesc tgscan;
	HeapTuple	tuple;
	bool		found;
	bool		changed;

	/* Scan the relevant entries in pg_triggers */
	tgrel = FUNC24(TriggerRelationId, RowExclusiveLock);

	FUNC11(&keys[0],
				Anum_pg_trigger_tgrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(FUNC10(rel)));
	if (tgname)
	{
		FUNC11(&keys[1],
					Anum_pg_trigger_tgname,
					BTEqualStrategyNumber, F_NAMEEQ,
					FUNC0(tgname));
		nkeys = 2;
	}
	else
		nkeys = 1;

	tgscan = FUNC20(tgrel, TriggerRelidNameIndexId, true,
								NULL, nkeys, keys);

	found = changed = false;

	while (FUNC4(tuple = FUNC22(tgscan)))
	{
		Form_pg_trigger oldtrig = (Form_pg_trigger) FUNC3(tuple);

		if (oldtrig->tgisinternal)
		{
			/* system trigger ... ok to process? */
			if (skip_system)
				continue;
			if (!FUNC19())
				FUNC13(ERROR,
						(FUNC14(ERRCODE_INSUFFICIENT_PRIVILEGE),
						 FUNC15("permission denied: \"%s\" is a system trigger",
								FUNC6(oldtrig->tgname))));
		}

		found = true;

		if (oldtrig->tgenabled != fires_when)
		{
			/* need to change this one ... make a copy to scribble on */
			HeapTuple	newtup = FUNC16(tuple);
			Form_pg_trigger newtrig = (Form_pg_trigger) FUNC3(newtup);

			newtrig->tgenabled = fires_when;

			FUNC2(tgrel, &newtup->t_self, newtup);

			FUNC17(newtup);

			/*
			 * When altering FOR EACH ROW triggers on a partitioned table, do
			 * the same on the partitions as well.
			 */
			if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE &&
				(FUNC12(oldtrig->tgtype)))
			{
				PartitionDesc partdesc = FUNC8(rel);
				int			i;

				for (i = 0; i < partdesc->nparts; i++)
				{
					Relation	part;

					part = FUNC18(partdesc->oids[i], lockmode);
					FUNC25(part, FUNC6(oldtrig->tgname),
										 fires_when, skip_system, lockmode);
					FUNC23(part, NoLock);	/* keep lock till commit */
				}
			}

			changed = true;
		}

		FUNC5(TriggerRelationId,
								  oldtrig->oid, 0);
	}

	FUNC21(tgscan);

	FUNC23(tgrel, RowExclusiveLock);

	if (tgname && !found)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_UNDEFINED_OBJECT),
				 FUNC15("trigger \"%s\" for table \"%s\" does not exist",
						tgname, FUNC9(rel))));

	/*
	 * If we changed anything, broadcast a SI inval message to force each
	 * backend (including our own!) to rebuild relation's relcache entry.
	 * Otherwise they will fail to apply the change promptly.
	 */
	if (changed)
		FUNC1(rel);
}