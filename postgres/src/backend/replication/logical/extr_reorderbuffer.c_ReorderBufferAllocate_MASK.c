#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_ctl ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
struct TYPE_10__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
struct TYPE_9__ {int /*<<< orphan*/  txns_by_base_snapshot_lsn; int /*<<< orphan*/  toplevel_by_lsn; int /*<<< orphan*/  current_restart_decoding_lsn; scalar_t__ outbufsize; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/ * by_txn_last_txn; int /*<<< orphan*/  by_txn_last_xid; int /*<<< orphan*/  by_txn; int /*<<< orphan*/  context; int /*<<< orphan*/  tup_context; void* txn_context; void* change_context; } ;
typedef  int /*<<< orphan*/  ReorderBufferTXNByIdEnt ;
typedef  int /*<<< orphan*/  ReorderBufferTXN ;
typedef  int /*<<< orphan*/  ReorderBufferChange ;
typedef  TYPE_2__ ReorderBuffer ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_7__* MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLAB_DEFAULT_BLOCK_SIZE ; 
 int /*<<< orphan*/  SLAB_LARGE_BLOCK_SIZE ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

ReorderBuffer *
FUNC10(void)
{
	ReorderBuffer *buffer;
	HASHCTL		hash_ctl;
	MemoryContext new_ctx;

	FUNC1(MyReplicationSlot != NULL);

	/* allocate memory in own context, to have better accountability */
	new_ctx = FUNC0(CurrentMemoryContext,
									"ReorderBuffer",
									ALLOCSET_DEFAULT_SIZES);

	buffer =
		(ReorderBuffer *) FUNC3(new_ctx, sizeof(ReorderBuffer));

	FUNC9(&hash_ctl, 0, sizeof(hash_ctl));

	buffer->context = new_ctx;

	buffer->change_context = FUNC6(new_ctx,
											   "Change",
											   SLAB_DEFAULT_BLOCK_SIZE,
											   sizeof(ReorderBufferChange));

	buffer->txn_context = FUNC6(new_ctx,
											"TXN",
											SLAB_DEFAULT_BLOCK_SIZE,
											sizeof(ReorderBufferTXN));

	buffer->tup_context = FUNC2(new_ctx,
												  "Tuples",
												  SLAB_LARGE_BLOCK_SIZE);

	hash_ctl.keysize = sizeof(TransactionId);
	hash_ctl.entrysize = sizeof(ReorderBufferTXNByIdEnt);
	hash_ctl.hcxt = buffer->context;

	buffer->by_txn = FUNC8("ReorderBufferByXid", 1000, &hash_ctl,
								 HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	buffer->by_txn_last_xid = InvalidTransactionId;
	buffer->by_txn_last_txn = NULL;

	buffer->outbuf = NULL;
	buffer->outbufsize = 0;

	buffer->current_restart_decoding_lsn = InvalidXLogRecPtr;

	FUNC7(&buffer->toplevel_by_lsn);
	FUNC7(&buffer->txns_by_base_snapshot_lsn);

	/*
	 * Ensure there's no stale data from prior uses of this slot, in case some
	 * prior exit avoided calling ReorderBufferFree. Failure to do this can
	 * produce duplicated txns, and it's very cheap if there's nothing there.
	 */
	FUNC5(FUNC4(MyReplicationSlot->data.name));

	return buffer;
}