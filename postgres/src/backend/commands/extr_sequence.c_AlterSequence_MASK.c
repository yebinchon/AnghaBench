#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_19__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  for_identity; int /*<<< orphan*/  options; TYPE_19__* sequence; scalar_t__ missing_ok; } ;
struct TYPE_29__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_28__ {TYPE_1__* rd_rel; } ;
struct TYPE_27__ {int /*<<< orphan*/  last; int /*<<< orphan*/  cached; } ;
struct TYPE_26__ {scalar_t__ relfrozenxid; scalar_t__ relminmxid; int /*<<< orphan*/  relpersistence; } ;
struct TYPE_25__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_2__* SeqTable ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTupleData ;
typedef  TYPE_4__* HeapTuple ;
typedef  scalar_t__ Form_pg_sequence_data ;
typedef  scalar_t__ Form_pg_sequence ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_5__ AlterSeqStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ InvalidMultiXactId ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  RVR_MISSING_OK ; 
 int /*<<< orphan*/  RangeVarCallbackOwnsRelation ; 
 scalar_t__ FUNC8 (TYPE_19__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SEQRELID ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SequenceRelationId ; 
 int /*<<< orphan*/  ShareRowExclusiveLock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,TYPE_2__**,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC25(ParseState *pstate, AlterSeqStmt *stmt)
{
	Oid			relid;
	SeqTable	elm;
	Relation	seqrel;
	Buffer		buf;
	HeapTupleData datatuple;
	Form_pg_sequence seqform;
	Form_pg_sequence_data newdataform;
	bool		need_seq_rewrite;
	List	   *owned_by;
	ObjectAddress address;
	Relation	rel;
	HeapTuple	seqtuple;
	HeapTuple	newdatatuple;

	/* Open and lock sequence, and check for ownership along the way. */
	relid = FUNC8(stmt->sequence,
									 ShareRowExclusiveLock,
									 stmt->missing_ok ? RVR_MISSING_OK : 0,
									 RangeVarCallbackOwnsRelation,
									 NULL);
	if (relid == InvalidOid)
	{
		FUNC14(NOTICE,
				(FUNC15("relation \"%s\" does not exist, skipping",
						stmt->sequence->relname)));
		return InvalidObjectAddress;
	}

	FUNC19(relid, &elm, &seqrel);

	rel = FUNC24(SequenceRelationId, RowExclusiveLock);
	seqtuple = FUNC11(SEQRELID,
								   FUNC7(relid));
	if (!FUNC4(seqtuple))
		FUNC13(ERROR, "cache lookup failed for sequence %u",
			 relid);

	seqform = (Form_pg_sequence) FUNC2(seqtuple);

	/* lock page's buffer and read tuple into new sequence structure */
	(void) FUNC21(seqrel, &buf, &datatuple);

	/* copy the existing sequence data tuple, so it can be modified locally */
	newdatatuple = FUNC17(&datatuple);
	newdataform = (Form_pg_sequence_data) FUNC2(newdatatuple);

	FUNC12(buf);

	/* Check and set new values */
	FUNC18(pstate, stmt->options, stmt->for_identity, false,
				seqform, newdataform,
				&need_seq_rewrite, &owned_by);

	/* Clear local cache so that we don't think we have cached numbers */
	/* Note that we do not change the currval() state */
	elm->cached = elm->last;

	/* If needed, rewrite the sequence relation itself */
	if (need_seq_rewrite)
	{
		/* check the comment above nextval_internal()'s equivalent call. */
		if (FUNC9(seqrel))
			FUNC3();

		/*
		 * Create a new storage file for the sequence, making the state
		 * changes transactional.
		 */
		FUNC10(seqrel, seqrel->rd_rel->relpersistence);

		/*
		 * Ensure sequence's relfrozenxid is at 0, since it won't contain any
		 * unfrozen XIDs.  Same with relminmxid, since a sequence will never
		 * contain multixacts.
		 */
		FUNC0(seqrel->rd_rel->relfrozenxid == InvalidTransactionId);
		FUNC0(seqrel->rd_rel->relminmxid == InvalidMultiXactId);

		/*
		 * Insert the modified tuple into the new storage file.
		 */
		FUNC16(seqrel, newdatatuple);
	}

	/* process OWNED BY if given */
	if (owned_by)
		FUNC20(seqrel, owned_by, stmt->for_identity);

	/* update the pg_sequence tuple (we could skip this in some cases...) */
	FUNC1(rel, &seqtuple->t_self, seqtuple);

	FUNC5(RelationRelationId, relid, 0);

	FUNC6(address, RelationRelationId, relid);

	FUNC23(rel, RowExclusiveLock);
	FUNC22(seqrel, NoLock);

	return address;
}