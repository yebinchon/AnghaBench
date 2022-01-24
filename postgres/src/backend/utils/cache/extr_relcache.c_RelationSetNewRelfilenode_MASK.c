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
typedef  scalar_t__ TransactionId ;
struct TYPE_28__ {scalar_t__ relfrozenxid; scalar_t__ relminmxid; char relpersistence; scalar_t__ relallvisible; scalar_t__ reltuples; scalar_t__ relpages; void* relfilenode; } ;
struct TYPE_27__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_26__ {void* relNode; } ;
struct TYPE_25__ {int /*<<< orphan*/  rd_newRelfilenodeSubid; TYPE_1__* rd_rel; TYPE_3__ rd_node; } ;
struct TYPE_24__ {int relkind; int /*<<< orphan*/  relisshared; int /*<<< orphan*/  reltablespace; } ;
typedef  int /*<<< orphan*/  SMgrRelation ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ RelFileNode ;
typedef  void* Oid ;
typedef  scalar_t__ MultiXactId ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 scalar_t__ InvalidMultiXactId ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
#define  RELKIND_INDEX 132 
#define  RELKIND_MATVIEW 131 
#define  RELKIND_RELATION 130 
#define  RELKIND_SEQUENCE 129 
#define  RELKIND_TOASTVALUE 128 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__,char) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,TYPE_3__*,char,scalar_t__*,scalar_t__*) ; 

void
FUNC24(Relation relation, char persistence)
{
	Oid			newrelfilenode;
	Relation	pg_class;
	HeapTuple	tuple;
	Form_pg_class classform;
	MultiXactId minmulti = InvalidMultiXactId;
	TransactionId freezeXid = InvalidTransactionId;
	RelFileNode newrnode;

	/* Allocate a new relfilenode */
	newrelfilenode = FUNC8(relation->rd_rel->reltablespace, NULL,
									   persistence);

	/*
	 * Get a writable copy of the pg_class tuple for the given relation.
	 */
	pg_class = FUNC22(RelationRelationId, RowExclusiveLock);

	tuple = FUNC17(RELOID,
								FUNC10(FUNC14(relation)));
	if (!FUNC9(tuple))
		FUNC18(ERROR, "could not find tuple for relation %u",
			 FUNC14(relation));
	classform = (Form_pg_class) FUNC5(tuple);

	/*
	 * Schedule unlinking of the old storage at transaction commit.
	 */
	FUNC12(relation);

	/*
	 * Create storage for the main fork of the new relfilenode.  If it's a
	 * table-like object, call into the table AM to do so, which'll also
	 * create the table's init fork if needed.
	 *
	 * NOTE: If relevant for the AM, any conflict in relfilenode value will be
	 * caught here, if GetNewRelFileNode messes up for any reason.
	 */
	newrnode = relation->rd_node;
	newrnode.relNode = newrelfilenode;

	switch (relation->rd_rel->relkind)
	{
		case RELKIND_INDEX:
		case RELKIND_SEQUENCE:
			{
				/* handle these directly, at least for now */
				SMgrRelation srel;

				srel = FUNC11(newrnode, persistence);
				FUNC20(srel);
			}
			break;

		case RELKIND_RELATION:
		case RELKIND_TOASTVALUE:
		case RELKIND_MATVIEW:
			FUNC23(relation, &newrnode,
											persistence,
											&freezeXid, &minmulti);
			break;

		default:
			/* we shouldn't be called for anything else */
			FUNC18(ERROR, "relation \"%s\" does not have storage",
				 FUNC13(relation));
			break;
	}

	/*
	 * If we're dealing with a mapped index, pg_class.relfilenode doesn't
	 * change; instead we have to send the update to the relation mapper.
	 *
	 * For mapped indexes, we don't actually change the pg_class entry at all;
	 * this is essential when reindexing pg_class itself.  That leaves us with
	 * possibly-inaccurate values of relpages etc, but those will be fixed up
	 * later.
	 */
	if (FUNC15(relation))
	{
		/* This case is only supported for indexes */
		FUNC0(relation->rd_rel->relkind == RELKIND_INDEX);

		/* Since we're not updating pg_class, these had better not change */
		FUNC0(classform->relfrozenxid == freezeXid);
		FUNC0(classform->relminmxid == minmulti);
		FUNC0(classform->relpersistence == persistence);

		/*
		 * In some code paths it's possible that the tuple update we'd
		 * otherwise do here is the only thing that would assign an XID for
		 * the current transaction.  However, we must have an XID to delete
		 * files, so make sure one is assigned.
		 */
		(void) FUNC7();

		/* Do the deed */
		FUNC16(FUNC14(relation),
							 newrelfilenode,
							 relation->rd_rel->relisshared,
							 false);

		/* Since we're not updating pg_class, must trigger inval manually */
		FUNC1(relation);
	}
	else
	{
		/* Normal case, update the pg_class entry */
		classform->relfilenode = newrelfilenode;

		/* relpages etc. never change for sequences */
		if (relation->rd_rel->relkind != RELKIND_SEQUENCE)
		{
			classform->relpages = 0;	/* it's empty until further notice */
			classform->reltuples = 0;
			classform->relallvisible = 0;
		}
		classform->relfrozenxid = freezeXid;
		classform->relminmxid = minmulti;
		classform->relpersistence = persistence;

		FUNC2(pg_class, &tuple->t_self, tuple);
	}

	FUNC19(tuple);

	FUNC21(pg_class, RowExclusiveLock);

	/*
	 * Make the pg_class row change or relation map change visible.  This will
	 * cause the relcache entry to get updated, too.
	 */
	FUNC3();

	/*
	 * Mark the rel as having been given a new relfilenode in the current
	 * (sub) transaction.  This is a hint that can be used to optimize later
	 * operations on the rel in the same transaction.
	 */
	relation->rd_newRelfilenodeSubid = FUNC6();

	/* Flag relation as needing eoxact cleanup (to remove the hint) */
	FUNC4(relation);
}