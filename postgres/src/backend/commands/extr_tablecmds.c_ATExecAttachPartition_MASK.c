#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;
typedef  struct TYPE_40__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_45__ {scalar_t__ attisdropped; int /*<<< orphan*/  attname; } ;
struct TYPE_44__ {TYPE_14__* bound; int /*<<< orphan*/  name; } ;
struct TYPE_43__ {int /*<<< orphan*/  trigdesc; int /*<<< orphan*/  rd_islocaltemp; TYPE_1__* rd_rel; } ;
struct TYPE_42__ {int natts; } ;
struct TYPE_41__ {scalar_t__ relkind; scalar_t__ relpersistence; int /*<<< orphan*/  reloftype; scalar_t__ relispartition; } ;
struct TYPE_40__ {int /*<<< orphan*/  is_default; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__ PartitionCmd ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_5__* Form_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  ATTNAME ; 
 int ATT_FOREIGN_TABLE ; 
 int ATT_TABLE ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhparent ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhrelid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_TABLE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InheritsParentIndexId ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  InheritsRelidSeqnoIndexId ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RELPERSISTENCE_TEMP ; 
 TYPE_2__* FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,TYPE_3__*,TYPE_14__*) ; 
 TYPE_5__* FUNC23 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (TYPE_3__*,TYPE_3__*,TYPE_14__*) ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC39 (int /*<<< orphan*/ *,int,TYPE_3__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC46(List **wqueue, Relation rel, PartitionCmd *cmd)
{
	Relation	attachrel,
				catalog;
	List	   *attachrel_children;
	List	   *partConstraint;
	SysScanDesc scan;
	ScanKeyData skey;
	AttrNumber	attno;
	int			natts;
	TupleDesc	tupleDesc;
	ObjectAddress address;
	const char *trigger_name;
	bool		found_whole_row;
	Oid			defaultPartOid;
	List	   *partBoundConstraint;

	/*
	 * We must lock the default partition if one exists, because attaching a
	 * new partition will change its partition constraint.
	 */
	defaultPartOid =
		FUNC32(FUNC16(rel));
	if (FUNC13(defaultPartOid))
		FUNC9(defaultPartOid, AccessExclusiveLock);

	attachrel = FUNC45(cmd->name, AccessExclusiveLock);

	/*
	 * XXX I think it'd be a good idea to grab locks on all tables referenced
	 * by FKs at this point also.
	 */

	/*
	 * Must be owner of both parent and source table -- parent was checked by
	 * ATSimplePermissions call in ATPrepCmd
	 */
	FUNC0(attachrel, ATT_TABLE | ATT_FOREIGN_TABLE);

	/* A partition can only have one parent */
	if (attachrel->rd_rel->relispartition)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("\"%s\" is already a partition",
						FUNC18(attachrel))));

	if (FUNC13(attachrel->rd_rel->reloftype))
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach a typed table as partition")));

	/*
	 * Table being attached should not already be part of inheritance; either
	 * as a child table...
	 */
	catalog = FUNC44(InheritsRelationId, AccessShareLock);
	FUNC20(&skey,
				Anum_pg_inherits_inhrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC12(FUNC19(attachrel)));
	scan = FUNC40(catalog, InheritsRelidSeqnoIndexId, true,
							  NULL, 1, &skey);
	if (FUNC8(FUNC42(scan)))
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach inheritance child as partition")));
	FUNC41(scan);

	/* ...or as a parent table (except the case when it is partitioned) */
	FUNC20(&skey,
				Anum_pg_inherits_inhparent,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC12(FUNC19(attachrel)));
	scan = FUNC40(catalog, InheritsParentIndexId, true, NULL,
							  1, &skey);
	if (FUNC8(FUNC42(scan)) &&
		attachrel->rd_rel->relkind == RELKIND_RELATION)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach inheritance parent as partition")));
	FUNC41(scan);
	FUNC43(catalog, AccessShareLock);

	/*
	 * Prevent circularity by seeing if rel is a partition of attachrel. (In
	 * particular, this disallows making a rel a partition of itself.)
	 *
	 * We do that by checking if rel is a member of the list of attachrel's
	 * partitions provided the latter is partitioned at all.  We want to avoid
	 * having to construct this list again, so we request the strongest lock
	 * on all partitions.  We need the strongest lock, because we may decide
	 * to scan them if we find out that the table being attached (or its leaf
	 * partitions) may contain rows that violate the partition constraint. If
	 * the table has a constraint that would prevent such rows, which by
	 * definition is present in all the partitions, we need not scan the
	 * table, nor its partitions.  But we cannot risk a deadlock by taking a
	 * weaker lock now and the stronger one only when needed.
	 */
	attachrel_children = FUNC31(FUNC19(attachrel),
											 AccessExclusiveLock, NULL);
	if (FUNC37(attachrel_children, FUNC19(rel)))
		FUNC26(ERROR,
				(FUNC27(ERRCODE_DUPLICATE_TABLE),
				 FUNC29("circular inheritance not allowed"),
				 FUNC28("\"%s\" is already a child of \"%s\".",
						   FUNC18(rel),
						   FUNC18(attachrel))));

	/* If the parent is permanent, so must be all of its partitions. */
	if (rel->rd_rel->relpersistence != RELPERSISTENCE_TEMP &&
		attachrel->rd_rel->relpersistence == RELPERSISTENCE_TEMP)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach a temporary relation as partition of permanent relation \"%s\"",
						FUNC18(rel))));

	/* Temp parent cannot have a partition that is itself not a temp */
	if (rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
		attachrel->rd_rel->relpersistence != RELPERSISTENCE_TEMP)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach a permanent relation as partition of temporary relation \"%s\"",
						FUNC18(rel))));

	/* If the parent is temp, it must belong to this session */
	if (rel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
		!rel->rd_islocaltemp)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach as partition of temporary relation of another session")));

	/* Ditto for the partition */
	if (attachrel->rd_rel->relpersistence == RELPERSISTENCE_TEMP &&
		!attachrel->rd_islocaltemp)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC29("cannot attach temporary relation of another session as partition")));

	/* Check if there are any columns in attachrel that aren't in the parent */
	tupleDesc = FUNC15(attachrel);
	natts = tupleDesc->natts;
	for (attno = 1; attno <= natts; attno++)
	{
		Form_pg_attribute attribute = FUNC23(tupleDesc, attno - 1);
		char	   *attributeName = FUNC10(attribute->attname);

		/* Ignore dropped */
		if (attribute->attisdropped)
			continue;

		/* Try to find the column in parent (matching on column name) */
		if (!FUNC21(ATTNAME,
								   FUNC12(FUNC19(rel)),
								   FUNC3(attributeName)))
			FUNC26(ERROR,
					(FUNC27(ERRCODE_DATATYPE_MISMATCH),
					 FUNC29("table \"%s\" contains column \"%s\" not found in parent \"%s\"",
							FUNC18(attachrel), attributeName,
							FUNC18(rel)),
					 FUNC28("The new partition may contain only the columns present in parent.")));
	}

	/*
	 * If child_rel has row-level triggers with transition tables, we
	 * currently don't allow it to become a partition.  See also prohibitions
	 * in ATExecAddInherit() and CreateTrigger().
	 */
	trigger_name = FUNC7(attachrel->trigdesc);
	if (trigger_name != NULL)
		FUNC26(ERROR,
				(FUNC27(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC29("trigger \"%s\" prevents table \"%s\" from becoming a partition",
						trigger_name, FUNC18(attachrel)),
				 FUNC28("ROW triggers with transition tables are not supported on partitions")));

	/*
	 * Check that the new partition's bound is valid and does not overlap any
	 * of existing partitions of the parent - note that it does not return on
	 * error.
	 */
	FUNC24(FUNC18(attachrel), rel,
							  cmd->bound);

	/* OK to create inheritance.  Rest of the checks performed there */
	FUNC6(attachrel, rel);

	/* Update the pg_class entry. */
	FUNC22(attachrel, rel, cmd->bound);

	/* Ensure there exists a correct set of indexes in the partition. */
	FUNC2(rel, attachrel);

	/* and triggers */
	FUNC5(rel, attachrel);

	/*
	 * Clone foreign key constraints.  Callee is responsible for setting up
	 * for phase 3 constraint verification.
	 */
	FUNC4(wqueue, rel, attachrel);

	/*
	 * Generate partition constraint from the partition bound specification.
	 * If the parent itself is a partition, make sure to include its
	 * constraint as well.
	 */
	partBoundConstraint = FUNC34(attachrel, rel, cmd->bound);
	partConstraint = FUNC35(partBoundConstraint,
								 FUNC17(rel));

	/* Skip validation if there are no constraints to validate. */
	if (partConstraint)
	{
		/*
		 * Run the partition quals through const-simplification similar to
		 * check constraints.  We skip canonicalize_qual, though, because
		 * partition quals should be in canonical form already.
		 */
		partConstraint =
			(List *) FUNC30(NULL,
											(Node *) partConstraint);

		/* XXX this sure looks wrong */
		partConstraint = FUNC36(FUNC38(partConstraint));

		/*
		 * Adjust the generated constraint to match this partition's attribute
		 * numbers.
		 */
		partConstraint = FUNC39(partConstraint, 1, attachrel,
												 rel, &found_whole_row);
		/* There can never be a whole-row reference here */
		if (found_whole_row)
			FUNC25(ERROR,
				 "unexpected whole-row reference found in partition key");

		/* Validate partition constraints against the table being attached. */
		FUNC14(wqueue, attachrel, partConstraint,
										   false);
	}

	/*
	 * If we're attaching a partition other than the default partition and a
	 * default one exists, then that partition's partition constraint changes,
	 * so add an entry to the work queue to validate it, too.  (We must not do
	 * this when the partition being attached is the default one; we already
	 * did it above!)
	 */
	if (FUNC13(defaultPartOid))
	{
		Relation	defaultrel;
		List	   *defPartConstraint;

		FUNC1(!cmd->bound->is_default);

		/* we already hold a lock on the default partition */
		defaultrel = FUNC44(defaultPartOid, NoLock);
		defPartConstraint =
			FUNC33(partBoundConstraint);

		/*
		 * Map the Vars in the constraint expression from rel's attnos to
		 * defaultrel's.
		 */
		defPartConstraint =
			FUNC39(defPartConstraint,
									1, defaultrel, rel, NULL);
		FUNC14(wqueue, defaultrel,
										   defPartConstraint, true);

		/* keep our lock until commit. */
		FUNC43(defaultrel, NoLock);
	}

	FUNC11(address, RelationRelationId, FUNC19(attachrel));

	/* keep our lock until commit */
	FUNC43(attachrel, NoLock);

	return address;
}