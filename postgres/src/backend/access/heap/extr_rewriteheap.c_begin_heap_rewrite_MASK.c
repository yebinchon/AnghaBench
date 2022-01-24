#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_ctl ;
typedef  int /*<<< orphan*/  UnresolvedTupData ;
typedef  void* TransactionId ;
typedef  int /*<<< orphan*/  TidHashKey ;
struct TYPE_9__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
struct TYPE_8__ {int rs_buffer_valid; int rs_use_wal; void* rs_old_new_tid_map; void* rs_unresolved_tups; int /*<<< orphan*/  rs_cxt; int /*<<< orphan*/  rs_cutoff_multi; void* rs_freeze_xid; void* rs_oldest_xmin; int /*<<< orphan*/  rs_blockno; scalar_t__ rs_buffer; void* rs_new_rel; void* rs_old_rel; } ;
typedef  int /*<<< orphan*/  RewriteStateData ;
typedef  TYPE_1__* RewriteState ;
typedef  void* Relation ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OldToNewMappingData ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (char*,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 

RewriteState
FUNC8(Relation old_heap, Relation new_heap, TransactionId oldest_xmin,
				   TransactionId freeze_xid, MultiXactId cutoff_multi,
				   bool use_wal)
{
	RewriteState state;
	MemoryContext rw_cxt;
	MemoryContext old_cxt;
	HASHCTL		hash_ctl;

	/*
	 * To ease cleanup, make a separate context that will contain the
	 * RewriteState struct itself plus all subsidiary data.
	 */
	rw_cxt = FUNC0(CurrentMemoryContext,
								   "Table rewrite",
								   ALLOCSET_DEFAULT_SIZES);
	old_cxt = FUNC1(rw_cxt);

	/* Create and fill in the state struct */
	state = FUNC7(sizeof(RewriteStateData));

	state->rs_old_rel = old_heap;
	state->rs_new_rel = new_heap;
	state->rs_buffer = (Page) FUNC6(BLCKSZ);
	/* new_heap needn't be empty, just locked */
	state->rs_blockno = FUNC2(new_heap);
	state->rs_buffer_valid = false;
	state->rs_use_wal = use_wal;
	state->rs_oldest_xmin = oldest_xmin;
	state->rs_freeze_xid = freeze_xid;
	state->rs_cutoff_multi = cutoff_multi;
	state->rs_cxt = rw_cxt;

	/* Initialize hash tables used to track update chains */
	FUNC5(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(TidHashKey);
	hash_ctl.entrysize = sizeof(UnresolvedTupData);
	hash_ctl.hcxt = state->rs_cxt;

	state->rs_unresolved_tups =
		FUNC3("Rewrite / Unresolved ctids",
					128,		/* arbitrary initial size */
					&hash_ctl,
					HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	hash_ctl.entrysize = sizeof(OldToNewMappingData);

	state->rs_old_new_tid_map =
		FUNC3("Rewrite / Old to new tid map",
					128,		/* arbitrary initial size */
					&hash_ctl,
					HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	FUNC1(old_cxt);

	FUNC4(state);

	return state;
}