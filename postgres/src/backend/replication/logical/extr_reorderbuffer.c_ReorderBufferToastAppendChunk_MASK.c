#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_10__ {TYPE_3__* newtuple; } ;
struct TYPE_11__ {TYPE_1__ tp; } ;
struct TYPE_15__ {int /*<<< orphan*/  node; TYPE_2__ data; } ;
struct TYPE_14__ {int /*<<< orphan*/ * toast_hash; } ;
struct TYPE_13__ {scalar_t__ chunk_id; scalar_t__ last_chunk_seq; scalar_t__ size; int /*<<< orphan*/  chunks; scalar_t__ num_chunks; int /*<<< orphan*/ * reconstructed; } ;
struct TYPE_12__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_3__ ReorderBufferTupleBuf ;
typedef  TYPE_4__ ReorderBufferToastEnt ;
typedef  TYPE_5__ ReorderBufferTXN ;
typedef  TYPE_6__ ReorderBufferChange ;
typedef  int /*<<< orphan*/  ReorderBuffer ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Pointer ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ VARHDRSZ_SHORT ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC16(ReorderBuffer *rb, ReorderBufferTXN *txn,
							  Relation relation, ReorderBufferChange *change)
{
	ReorderBufferToastEnt *ent;
	ReorderBufferTupleBuf *newtup;
	bool		found;
	int32		chunksize;
	bool		isnull;
	Pointer		chunk;
	TupleDesc	desc = FUNC5(relation);
	Oid			chunk_id;
	int32		chunk_seq;

	if (txn->toast_hash == NULL)
		FUNC6(rb, txn);

	FUNC0(FUNC4(relation));

	newtup = change->data.tp.newtuple;
	chunk_id = FUNC2(FUNC14(&newtup->tuple, 1, desc, &isnull));
	FUNC0(!isnull);
	chunk_seq = FUNC1(FUNC14(&newtup->tuple, 2, desc, &isnull));
	FUNC0(!isnull);

	ent = (ReorderBufferToastEnt *)
		FUNC15(txn->toast_hash,
					(void *) &chunk_id,
					HASH_ENTER,
					&found);

	if (!found)
	{
		FUNC0(ent->chunk_id == chunk_id);
		ent->num_chunks = 0;
		ent->last_chunk_seq = 0;
		ent->size = 0;
		ent->reconstructed = NULL;
		FUNC11(&ent->chunks);

		if (chunk_seq != 0)
			FUNC13(ERROR, "got sequence entry %d for toast chunk %u instead of seq 0",
				 chunk_seq, chunk_id);
	}
	else if (found && chunk_seq != ent->last_chunk_seq + 1)
		FUNC13(ERROR, "got sequence entry %d for toast chunk %u instead of seq %d",
			 chunk_seq, chunk_id, ent->last_chunk_seq + 1);

	chunk = FUNC3(FUNC14(&newtup->tuple, 3, desc, &isnull));
	FUNC0(!isnull);

	/* calculate size so we can allocate the right size at once later */
	if (!FUNC7(chunk))
		chunksize = FUNC9(chunk) - VARHDRSZ;
	else if (FUNC8(chunk))
		/* could happen due to heap_form_tuple doing its thing */
		chunksize = FUNC10(chunk) - VARHDRSZ_SHORT;
	else
		FUNC13(ERROR, "unexpected type of toast chunk");

	ent->size += chunksize;
	ent->last_chunk_seq = chunk_seq;
	ent->num_chunks++;
	FUNC12(&ent->chunks, &change->node);
}