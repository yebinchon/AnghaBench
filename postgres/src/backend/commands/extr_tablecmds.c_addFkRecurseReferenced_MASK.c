#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
struct TYPE_22__ {char* conname; int /*<<< orphan*/  fk_matchtype; int /*<<< orphan*/  fk_del_action; int /*<<< orphan*/  fk_upd_action; int /*<<< orphan*/  initially_valid; int /*<<< orphan*/  initdeferred; int /*<<< orphan*/  deferrable; int /*<<< orphan*/  fk_attrs; } ;
struct TYPE_21__ {int nparts; int /*<<< orphan*/ * oids; } ;
struct TYPE_20__ {TYPE_1__* rd_rel; } ;
struct TYPE_19__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* PartitionDesc ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_4__ Constraint ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  CONSTRAINT_FOREIGN ; 
 int /*<<< orphan*/  CONSTRAINT_RELATION ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_3__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  ShareRowExclusiveLock ; 
 int* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC24(List **wqueue, Constraint *fkconstraint, Relation rel,
					   Relation pkrel, Oid indexOid, Oid parentConstr,
					   int numfks,
					   int16 *pkattnum, int16 *fkattnum, Oid *pfeqoperators,
					   Oid *ppeqoperators, Oid *ffeqoperators, bool old_check_ok)
{
	ObjectAddress address;
	Oid			constrOid;
	char	   *conname;
	bool		conislocal;
	int			coninhcount;
	bool		connoinherit;

	/*
	 * Verify relkind for each referenced partition.  At the top level, this
	 * is redundant with a previous check, but we need it when recursing.
	 */
	if (pkrel->rd_rel->relkind != RELKIND_RELATION &&
		pkrel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
		FUNC15(ERROR,
				(FUNC16(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC17("referenced relation \"%s\" is not a table",
						FUNC10(pkrel))));

	/*
	 * Caller supplies us with a constraint name; however, it may be used in
	 * this partition, so come up with a different one in that case.
	 */
	if (FUNC3(CONSTRAINT_RELATION,
							 FUNC11(rel),
							 fkconstraint->conname))
		conname = FUNC0(FUNC10(rel),
									   FUNC1(fkconstraint->fk_attrs),
									   "fkey",
									   FUNC8(rel), NIL);
	else
		conname = fkconstraint->conname;

	if (FUNC6(parentConstr))
	{
		conislocal = false;
		coninhcount = 1;
		connoinherit = false;
	}
	else
	{
		conislocal = true;
		coninhcount = 0;

		/*
		 * always inherit for partitioned tables, never for legacy inheritance
		 */
		connoinherit = rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE;
	}

	/*
	 * Record the FK constraint in pg_constraint.
	 */
	constrOid = FUNC4(conname,
									  FUNC8(rel),
									  CONSTRAINT_FOREIGN,
									  fkconstraint->deferrable,
									  fkconstraint->initdeferred,
									  fkconstraint->initially_valid,
									  parentConstr,
									  FUNC11(rel),
									  fkattnum,
									  numfks,
									  numfks,
									  InvalidOid,	/* not a domain constraint */
									  indexOid,
									  FUNC11(pkrel),
									  pkattnum,
									  pfeqoperators,
									  ppeqoperators,
									  ffeqoperators,
									  numfks,
									  fkconstraint->fk_upd_action,
									  fkconstraint->fk_del_action,
									  fkconstraint->fk_matchtype,
									  NULL, /* no exclusion constraint */
									  NULL, /* no check constraint */
									  NULL,
									  conislocal,	/* islocal */
									  coninhcount,	/* inhcount */
									  connoinherit, /* conNoInherit */
									  false);	/* is_internal */

	FUNC5(address, ConstraintRelationId, constrOid);

	/*
	 * Mark the child constraint as part of the parent constraint; it must not
	 * be dropped on its own.  (This constraint is deleted when the partition
	 * is detached, but a special check needs to occur that the partition
	 * contains no referenced values.)
	 */
	if (FUNC6(parentConstr))
	{
		ObjectAddress referenced;

		FUNC5(referenced, ConstraintRelationId, parentConstr);
		FUNC21(&address, &referenced, DEPENDENCY_INTERNAL);
	}

	/* make new constraint visible, in case we add more */
	FUNC2();

	/*
	 * If the referenced table is a plain relation, create the action triggers
	 * that enforce the constraint.
	 */
	if (pkrel->rd_rel->relkind == RELKIND_RELATION)
	{
		FUNC13(rel, FUNC11(pkrel),
									   fkconstraint,
									   constrOid, indexOid);
	}

	/*
	 * If the referenced table is partitioned, recurse on ourselves to handle
	 * each partition.  We need one pg_constraint row created for each
	 * partition in addition to the pg_constraint row for the parent table.
	 */
	if (pkrel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
	{
		PartitionDesc pd = FUNC9(pkrel);

		for (int i = 0; i < pd->nparts; i++)
		{
			Relation	partRel;
			AttrNumber *map;
			AttrNumber *mapped_pkattnum;
			Oid			partIndexId;

			partRel = FUNC23(pd->oids[i], ShareRowExclusiveLock);

			/*
			 * Map the attribute numbers in the referenced side of the FK
			 * definition to match the partition's column layout.
			 */
			map = FUNC12(FUNC7(partRel),
													FUNC7(pkrel));
			if (map)
			{
				mapped_pkattnum = FUNC19(sizeof(AttrNumber) * numfks);
				for (int j = 0; j < numfks; j++)
					mapped_pkattnum[j] = map[pkattnum[j] - 1];
			}
			else
				mapped_pkattnum = pkattnum;

			/* do the deed */
			partIndexId = FUNC18(partRel, indexOid);
			if (!FUNC6(partIndexId))
				FUNC14(ERROR, "index for %u not found in partition %s",
					 indexOid, FUNC10(partRel));
			FUNC24(wqueue, fkconstraint, rel, partRel,
								   partIndexId, constrOid, numfks,
								   mapped_pkattnum, fkattnum,
								   pfeqoperators, ppeqoperators, ffeqoperators,
								   old_check_ok);

			/* Done -- clean up (but keep the lock) */
			FUNC22(partRel, NoLock);
			if (map)
			{
				FUNC20(mapped_pkattnum);
				FUNC20(map);
			}
		}
	}

	return address;
}