#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_6__ ;
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
typedef  int bits16 ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  scalar_t__ TransactionId ;
struct TYPE_46__ {int /*<<< orphan*/  opcname; } ;
struct TYPE_45__ {int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; scalar_t__* ii_IndexAttrNumbers; scalar_t__ ii_Predicate; scalar_t__ ii_Expressions; scalar_t__ ii_Unique; int /*<<< orphan*/ * ii_ExclusionOps; } ;
struct TYPE_44__ {scalar_t__ objectId; scalar_t__ objectSubId; void* classId; } ;
struct TYPE_43__ {TYPE_1__* rd_index; int /*<<< orphan*/ * rd_indexcxt; TYPE_2__* rd_rel; } ;
struct TYPE_42__ {int relisshared; char relpersistence; scalar_t__ relispartition; scalar_t__ relam; int /*<<< orphan*/  relowner; } ;
struct TYPE_41__ {int indnkeyatts; } ;
typedef  TYPE_3__* Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_4__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  scalar_t__ MultiXactId ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_5__ IndexInfo ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_6__* Form_pg_opclass ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ BPCHAR_BTREE_PATTERN_OPS_OID ; 
 int /*<<< orphan*/  CLAOID ; 
 char CONSTRAINT_EXCLUSION ; 
 char CONSTRAINT_PRIMARY ; 
 int /*<<< orphan*/  CONSTRAINT_RELATION ; 
 char CONSTRAINT_UNIQUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 void* CollationRelationId ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  DEPENDENCY_PARTITION_PRI ; 
 int /*<<< orphan*/  DEPENDENCY_PARTITION_SEC ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_TABLE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ GLOBALTABLESPACE_OID ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int INDEX_CONSTR_CREATE_DEFERRABLE ; 
 int INDEX_CREATE_ADD_CONSTRAINT ; 
 int INDEX_CREATE_CONCURRENT ; 
 int INDEX_CREATE_IF_NOT_EXISTS ; 
 int INDEX_CREATE_INVALID ; 
 int INDEX_CREATE_IS_PRIMARY ; 
 int INDEX_CREATE_PARTITIONED ; 
 int INDEX_CREATE_SKIP_BUILD ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidMultiXactId ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC11 (void*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IsBinaryUpgrade ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 void* OperatorClassRelationId ; 
 char RELKIND_INDEX ; 
 char RELKIND_PARTITIONED_INDEX ; 
 scalar_t__ FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 scalar_t__ FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int FUNC24 (TYPE_3__*) ; 
 void* RelationRelationId ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ TEXT_BTREE_PATTERN_OPS_OID ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,scalar_t__,scalar_t__,TYPE_5__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int,int,int,int,int) ; 
 scalar_t__ VARCHAR_BTREE_PATTERN_OPS_OID ; 
 scalar_t__ binary_upgrade_next_index_pg_class_oid ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,...) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 
 scalar_t__ FUNC35 (char const*,scalar_t__) ; 
 TYPE_3__* FUNC36 (char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char,char,int,int,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__*,TYPE_3__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC39 (TYPE_3__*,scalar_t__,scalar_t__,TYPE_5__*,char const*,char,int,int,int) ; 
 int /*<<< orphan*/  FUNC40 (scalar_t__,scalar_t__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_3__*,int,double) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC45 (void*,int /*<<< orphan*/ ) ; 

Oid
FUNC46(Relation heapRelation,
			 const char *indexRelationName,
			 Oid indexRelationId,
			 Oid parentIndexRelid,
			 Oid parentConstraintId,
			 Oid relFileNode,
			 IndexInfo *indexInfo,
			 List *indexColNames,
			 Oid accessMethodObjectId,
			 Oid tableSpaceId,
			 Oid *collationObjectId,
			 Oid *classObjectId,
			 int16 *coloptions,
			 Datum reloptions,
			 bits16 flags,
			 bits16 constr_flags,
			 bool allow_system_table_mods,
			 bool is_internal,
			 Oid *constraintId)
{
	Oid			heapRelationId = FUNC22(heapRelation);
	Relation	pg_class;
	Relation	indexRelation;
	TupleDesc	indexTupDesc;
	bool		shared_relation;
	bool		mapped_relation;
	bool		is_exclusion;
	Oid			namespaceId;
	int			i;
	char		relpersistence;
	bool		isprimary = (flags & INDEX_CREATE_IS_PRIMARY) != 0;
	bool		invalid = (flags & INDEX_CREATE_INVALID) != 0;
	bool		concurrent = (flags & INDEX_CREATE_CONCURRENT) != 0;
	bool		partitioned = (flags & INDEX_CREATE_PARTITIONED) != 0;
	char		relkind;
	TransactionId relfrozenxid;
	MultiXactId relminmxid;

	/* constraint flags can only be set when a constraint is requested */
	FUNC1((constr_flags == 0) ||
		   ((flags & INDEX_CREATE_ADD_CONSTRAINT) != 0));
	/* partitioned indexes must never be "built" by themselves */
	FUNC1(!partitioned || (flags & INDEX_CREATE_SKIP_BUILD));

	relkind = partitioned ? RELKIND_PARTITIONED_INDEX : RELKIND_INDEX;
	is_exclusion = (indexInfo->ii_ExclusionOps != NULL);

	pg_class = FUNC45(RelationRelationId, RowExclusiveLock);

	/*
	 * The index will be in the same namespace as its parent table, and is
	 * shared across databases if and only if the parent is.  Likewise, it
	 * will use the relfilenode map if and only if the parent does; and it
	 * inherits the parent's relpersistence.
	 */
	namespaceId = FUNC20(heapRelation);
	shared_relation = heapRelation->rd_rel->relisshared;
	mapped_relation = FUNC24(heapRelation);
	relpersistence = heapRelation->rd_rel->relpersistence;

	/*
	 * check parameters
	 */
	if (indexInfo->ii_NumIndexAttrs < 1)
		FUNC30(ERROR, "must index at least one column");

	if (!allow_system_table_mods &&
		FUNC15(heapRelation) &&
		FUNC14())
		FUNC31(ERROR,
				(FUNC32(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC33("user-defined indexes on system catalog tables are not supported")));

	/*
	 * Btree text_pattern_ops uses text_eq as the equality operator, which is
	 * fine as long as the collation is deterministic; text_eq then reduces to
	 * bitwise equality and so it is semantically compatible with the other
	 * operators and functions in that opclass.  But with a nondeterministic
	 * collation, text_eq could yield results that are incompatible with the
	 * actual behavior of the index (which is determined by the opclass's
	 * comparison function).  We prevent such problems by refusing creation of
	 * an index with that opclass and a nondeterministic collation.
	 *
	 * The same applies to varchar_pattern_ops and bpchar_pattern_ops.  If we
	 * find more cases, we might decide to create a real mechanism for marking
	 * opclasses as incompatible with nondeterminism; but for now, this small
	 * hack suffices.
	 *
	 * Another solution is to use a special operator, not text_eq, as the
	 * equality opclass member; but that is undesirable because it would
	 * prevent index usage in many queries that work fine today.
	 */
	for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
	{
		Oid			collation = collationObjectId[i];
		Oid			opclass = classObjectId[i];

		if (collation)
		{
			if ((opclass == TEXT_BTREE_PATTERN_OPS_OID ||
				 opclass == VARCHAR_BTREE_PATTERN_OPS_OID ||
				 opclass == BPCHAR_BTREE_PATTERN_OPS_OID) &&
				!FUNC34(collation))
			{
				HeapTuple	classtup;

				classtup = FUNC26(CLAOID, FUNC18(opclass));
				if (!FUNC8(classtup))
					FUNC30(ERROR, "cache lookup failed for operator class %u", opclass);
				FUNC31(ERROR,
						(FUNC32(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC33("nondeterministic collations are not supported for operator class \"%s\"",
								FUNC17(((Form_pg_opclass) FUNC6(classtup))->opcname))));
				FUNC25(classtup);
			}
		}
	}

	/*
	 * Concurrent index build on a system catalog is unsafe because we tend to
	 * release locks before committing in catalogs.
	 */
	if (concurrent &&
		FUNC13(heapRelation))
		FUNC31(ERROR,
				(FUNC32(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC33("concurrent index creation on system catalog tables is not supported")));

	/*
	 * This case is currently not supported.  There's no way to ask for it in
	 * the grammar with CREATE INDEX, but it can happen with REINDEX.
	 */
	if (concurrent && is_exclusion)
		FUNC31(ERROR,
				(FUNC32(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC33("concurrent index creation for exclusion constraints is not supported")));

	/*
	 * We cannot allow indexing a shared relation after initdb (because
	 * there's no way to make the entry in other databases' pg_class).
	 */
	if (shared_relation && !FUNC12())
		FUNC31(ERROR,
				(FUNC32(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC33("shared indexes cannot be created after initdb")));

	/*
	 * Shared relations must be in pg_global, too (last-ditch check)
	 */
	if (shared_relation && tableSpaceId != GLOBALTABLESPACE_OID)
		FUNC30(ERROR, "shared relations must be placed in pg_global tablespace");

	/*
	 * Check for duplicate name (both as to the index, and as to the
	 * associated constraint if any).  Such cases would fail on the relevant
	 * catalogs' unique indexes anyway, but we prefer to give a friendlier
	 * error message.
	 */
	if (FUNC35(indexRelationName, namespaceId))
	{
		if ((flags & INDEX_CREATE_IF_NOT_EXISTS) != 0)
		{
			FUNC31(NOTICE,
					(FUNC32(ERRCODE_DUPLICATE_TABLE),
					 FUNC33("relation \"%s\" already exists, skipping",
							indexRelationName)));
			FUNC44(pg_class, RowExclusiveLock);
			return InvalidOid;
		}

		FUNC31(ERROR,
				(FUNC32(ERRCODE_DUPLICATE_TABLE),
				 FUNC33("relation \"%s\" already exists",
						indexRelationName)));
	}

	if ((flags & INDEX_CREATE_ADD_CONSTRAINT) != 0 &&
		FUNC4(CONSTRAINT_RELATION, heapRelationId,
							 indexRelationName))
	{
		/*
		 * INDEX_CREATE_IF_NOT_EXISTS does not apply here, since the
		 * conflicting constraint is not an index.
		 */
		FUNC31(ERROR,
				(FUNC32(ERRCODE_DUPLICATE_OBJECT),
				 FUNC33("constraint \"%s\" for relation \"%s\" already exists",
						indexRelationName, FUNC21(heapRelation))));
	}

	/*
	 * construct tuple descriptor for index tuples
	 */
	indexTupDesc = FUNC5(heapRelation,
											indexInfo,
											indexColNames,
											accessMethodObjectId,
											collationObjectId,
											classObjectId);

	/*
	 * Allocate an OID for the index, unless we were told what to use.
	 *
	 * The OID will be the relfilenode as well, so make sure it doesn't
	 * collide with either pg_class OIDs or existing physical files.
	 */
	if (!FUNC19(indexRelationId))
	{
		/* Use binary-upgrade override for pg_class.oid/relfilenode? */
		if (IsBinaryUpgrade)
		{
			if (!FUNC19(binary_upgrade_next_index_pg_class_oid))
				FUNC31(ERROR,
						(FUNC32(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC33("pg_class index OID value not set when in binary upgrade mode")));

			indexRelationId = binary_upgrade_next_index_pg_class_oid;
			binary_upgrade_next_index_pg_class_oid = InvalidOid;
		}
		else
		{
			indexRelationId =
				FUNC7(tableSpaceId, pg_class, relpersistence);
		}
	}

	/*
	 * create the index relation's relcache entry and, if necessary, the
	 * physical disk file. (If we fail further down, it's the smgr's
	 * responsibility to remove the disk file again, if any.)
	 */
	indexRelation = FUNC36(indexRelationName,
								namespaceId,
								tableSpaceId,
								indexRelationId,
								relFileNode,
								accessMethodObjectId,
								indexTupDesc,
								relkind,
								relpersistence,
								shared_relation,
								mapped_relation,
								allow_system_table_mods,
								&relfrozenxid,
								&relminmxid);

	FUNC1(relfrozenxid == InvalidTransactionId);
	FUNC1(relminmxid == InvalidMultiXactId);
	FUNC1(indexRelationId == FUNC22(indexRelation));

	/*
	 * Obtain exclusive lock on it.  Although no other transactions can see it
	 * until we commit, this prevents deadlock-risk complaints from lock
	 * manager in cases such as CLUSTER.
	 */
	FUNC16(indexRelation, AccessExclusiveLock);

	/*
	 * Fill in fields of the index's pg_class entry that are not set correctly
	 * by heap_create.
	 *
	 * XXX should have a cleaner way to create cataloged indexes
	 */
	indexRelation->rd_rel->relowner = heapRelation->rd_rel->relowner;
	indexRelation->rd_rel->relam = accessMethodObjectId;
	indexRelation->rd_rel->relispartition = FUNC19(parentIndexRelid);

	/*
	 * store index's pg_class entry
	 */
	FUNC10(pg_class, indexRelation,
					   FUNC22(indexRelation),
					   (Datum) 0,
					   reloptions);

	/* done with pg_class */
	FUNC44(pg_class, RowExclusiveLock);

	/*
	 * now update the object id's of all the attribute tuple forms in the
	 * index relation's tuple descriptor
	 */
	FUNC9(indexRelation,
							indexInfo->ii_NumIndexAttrs,
							indexRelationId);

	/*
	 * append ATTRIBUTE tuples for the index
	 */
	FUNC0(indexRelation, indexInfo->ii_NumIndexAttrs);

	/* ----------------
	 *	  update pg_index
	 *	  (append INDEX tuple)
	 *
	 *	  Note that this stows away a representation of "predicate".
	 *	  (Or, could define a rule to maintain the predicate) --Nels, Feb '92
	 * ----------------
	 */
	FUNC29(indexRelationId, heapRelationId, parentIndexRelid,
						indexInfo,
						collationObjectId, classObjectId, coloptions,
						isprimary, is_exclusion,
						(constr_flags & INDEX_CONSTR_CREATE_DEFERRABLE) == 0,
						!concurrent && !invalid,
						!concurrent);

	/*
	 * Register relcache invalidation on the indexes' heap relation, to
	 * maintain consistency of its index list
	 */
	FUNC2(heapRelation);

	/* update pg_inherits and the parent's relhassubclass, if needed */
	if (FUNC19(parentIndexRelid))
	{
		FUNC28(indexRelationId, parentIndexRelid, 1);
		FUNC27(parentIndexRelid, true);
	}

	/*
	 * Register constraint and dependencies for the index.
	 *
	 * If the index is from a CONSTRAINT clause, construct a pg_constraint
	 * entry.  The index will be linked to the constraint, which in turn is
	 * linked to the table.  If it's not a CONSTRAINT, we need to make a
	 * dependency directly on the table.
	 *
	 * We don't need a dependency on the namespace, because there'll be an
	 * indirect dependency via our parent table.
	 *
	 * During bootstrap we can't register any dependencies, and we don't try
	 * to make a constraint either.
	 */
	if (!FUNC12())
	{
		ObjectAddress myself,
					referenced;

		myself.classId = RelationRelationId;
		myself.objectId = indexRelationId;
		myself.objectSubId = 0;

		if ((flags & INDEX_CREATE_ADD_CONSTRAINT) != 0)
		{
			char		constraintType;
			ObjectAddress localaddr;

			if (isprimary)
				constraintType = CONSTRAINT_PRIMARY;
			else if (indexInfo->ii_Unique)
				constraintType = CONSTRAINT_UNIQUE;
			else if (is_exclusion)
				constraintType = CONSTRAINT_EXCLUSION;
			else
			{
				FUNC30(ERROR, "constraint must be PRIMARY, UNIQUE or EXCLUDE");
				constraintType = 0; /* keep compiler quiet */
			}

			localaddr = FUNC39(heapRelation,
												indexRelationId,
												parentConstraintId,
												indexInfo,
												indexRelationName,
												constraintType,
												constr_flags,
												allow_system_table_mods,
												is_internal);
			if (constraintId)
				*constraintId = localaddr.objectId;
		}
		else
		{
			bool		have_simple_col = false;

			/* Create auto dependencies on simply-referenced columns */
			for (i = 0; i < indexInfo->ii_NumIndexAttrs; i++)
			{
				if (indexInfo->ii_IndexAttrNumbers[i] != 0)
				{
					referenced.classId = RelationRelationId;
					referenced.objectId = heapRelationId;
					referenced.objectSubId = indexInfo->ii_IndexAttrNumbers[i];

					FUNC42(&myself, &referenced, DEPENDENCY_AUTO);

					have_simple_col = true;
				}
			}

			/*
			 * If there are no simply-referenced columns, give the index an
			 * auto dependency on the whole table.  In most cases, this will
			 * be redundant, but it might not be if the index expressions and
			 * predicate contain no Vars or only whole-row Vars.
			 */
			if (!have_simple_col)
			{
				referenced.classId = RelationRelationId;
				referenced.objectId = heapRelationId;
				referenced.objectSubId = 0;

				FUNC42(&myself, &referenced, DEPENDENCY_AUTO);
			}
		}

		/*
		 * If this is an index partition, create partition dependencies on
		 * both the parent index and the table.  (Note: these must be *in
		 * addition to*, not instead of, all other dependencies.  Otherwise
		 * we'll be short some dependencies after DETACH PARTITION.)
		 */
		if (FUNC19(parentIndexRelid))
		{
			referenced.classId = RelationRelationId;
			referenced.objectId = parentIndexRelid;
			referenced.objectSubId = 0;

			FUNC42(&myself, &referenced, DEPENDENCY_PARTITION_PRI);

			referenced.classId = RelationRelationId;
			referenced.objectId = heapRelationId;
			referenced.objectSubId = 0;

			FUNC42(&myself, &referenced, DEPENDENCY_PARTITION_SEC);
		}

		/* Store dependency on collations */
		/* The default collation is pinned, so don't bother recording it */
		for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
		{
			if (FUNC19(collationObjectId[i]) &&
				collationObjectId[i] != DEFAULT_COLLATION_OID)
			{
				referenced.classId = CollationRelationId;
				referenced.objectId = collationObjectId[i];
				referenced.objectSubId = 0;

				FUNC42(&myself, &referenced, DEPENDENCY_NORMAL);
			}
		}

		/* Store dependency on operator classes */
		for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
		{
			referenced.classId = OperatorClassRelationId;
			referenced.objectId = classObjectId[i];
			referenced.objectSubId = 0;

			FUNC42(&myself, &referenced, DEPENDENCY_NORMAL);
		}

		/* Store dependencies on anything mentioned in index expressions */
		if (indexInfo->ii_Expressions)
		{
			FUNC43(&myself,
											(Node *) indexInfo->ii_Expressions,
											heapRelationId,
											DEPENDENCY_NORMAL,
											DEPENDENCY_AUTO, false);
		}

		/* Store dependencies on anything mentioned in predicate */
		if (indexInfo->ii_Predicate)
		{
			FUNC43(&myself,
											(Node *) indexInfo->ii_Predicate,
											heapRelationId,
											DEPENDENCY_NORMAL,
											DEPENDENCY_AUTO, false);
		}
	}
	else
	{
		/* Bootstrap mode - assert we weren't asked for constraint support */
		FUNC1((flags & INDEX_CREATE_ADD_CONSTRAINT) == 0);
	}

	/* Post creation hook for new index */
	FUNC11(RelationRelationId,
								  indexRelationId, 0, is_internal);

	/*
	 * Advance the command counter so that we can see the newly-entered
	 * catalog tuples for the index.
	 */
	FUNC3();

	/*
	 * In bootstrap mode, we have to fill in the index strategy structure with
	 * information from the catalogs.  If we aren't bootstrapping, then the
	 * relcache entry has already been rebuilt thanks to sinval update during
	 * CommandCounterIncrement.
	 */
	if (FUNC12())
		FUNC23(indexRelation);
	else
		FUNC1(indexRelation->rd_indexcxt != NULL);

	indexRelation->rd_index->indnkeyatts = indexInfo->ii_NumIndexKeyAttrs;

	/*
	 * If this is bootstrap (initdb) time, then we don't actually fill in the
	 * index yet.  We'll be creating more indexes and classes later, so we
	 * delay filling them in until just before we're done with bootstrapping.
	 * Similarly, if the caller specified to skip the build then filling the
	 * index is delayed till later (ALTER TABLE can save work in some cases
	 * with this).  Otherwise, we call the AM routine that constructs the
	 * index.
	 */
	if (FUNC12())
	{
		FUNC40(heapRelationId, indexRelationId, indexInfo);
	}
	else if ((flags & INDEX_CREATE_SKIP_BUILD) != 0)
	{
		/*
		 * Caller is responsible for filling the index later on.  However,
		 * we'd better make sure that the heap relation is correctly marked as
		 * having an index.
		 */
		FUNC41(heapRelation,
						   true,
						   -1.0);
		/* Make the above update visible */
		FUNC3();
	}
	else
	{
		FUNC37(heapRelation, indexRelation, indexInfo, false, true);
	}

	/*
	 * Close the index; but we keep the lock that we acquired above until end
	 * of transaction.  Closing the heap is caller's responsibility.
	 */
	FUNC38(indexRelation, NoLock);

	return indexRelationId;
}