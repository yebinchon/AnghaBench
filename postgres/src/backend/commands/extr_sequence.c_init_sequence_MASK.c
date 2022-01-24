#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ filenode; int last_valid; scalar_t__ last; scalar_t__ cached; int /*<<< orphan*/  lxid; } ;
struct TYPE_9__ {scalar_t__ relkind; scalar_t__ relfilenode; } ;
typedef  TYPE_2__* SeqTable ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  InvalidLocalTransactionId ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * seqhashtab ; 

__attribute__((used)) static void
FUNC7(Oid relid, SeqTable *p_elm, Relation *p_rel)
{
	SeqTable	elm;
	Relation	seqrel;
	bool		found;

	/* Find or create a hash table entry for this sequence */
	if (seqhashtab == NULL)
		FUNC1();

	elm = (SeqTable) FUNC5(seqhashtab, &relid, HASH_ENTER, &found);

	/*
	 * Initialize the new hash table entry if it did not exist already.
	 *
	 * NOTE: seqhashtab entries are stored for the life of a backend (unless
	 * explicitly discarded with DISCARD). If the sequence itself is deleted
	 * then the entry becomes wasted memory, but it's small enough that this
	 * should not matter.
	 */
	if (!found)
	{
		/* relid already filled in */
		elm->filenode = InvalidOid;
		elm->lxid = InvalidLocalTransactionId;
		elm->last_valid = false;
		elm->last = elm->cached = 0;
	}

	/*
	 * Open the sequence relation.
	 */
	seqrel = FUNC6(elm);

	if (seqrel->rd_rel->relkind != RELKIND_SEQUENCE)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC4("\"%s\" is not a sequence",
						FUNC0(seqrel))));

	/*
	 * If the sequence has been transactionally replaced since we last saw it,
	 * discard any cached-but-unissued values.  We do not touch the currval()
	 * state, however.
	 */
	if (seqrel->rd_rel->relfilenode != elm->filenode)
	{
		elm->filenode = seqrel->rd_rel->relfilenode;
		elm->cached = elm->last;
	}

	/* Return results */
	*p_elm = elm;
	*p_rel = seqrel;
}