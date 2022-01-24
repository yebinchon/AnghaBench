#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* UnresolvedTup ;
struct TYPE_16__ {int /*<<< orphan*/  rd_smgr; int /*<<< orphan*/  rd_node; } ;
struct TYPE_15__ {TYPE_1__* t_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  rs_cxt; TYPE_7__* rs_new_rel; scalar_t__ rs_buffer; int /*<<< orphan*/  rs_blockno; scalar_t__ rs_use_wal; scalar_t__ rs_buffer_valid; int /*<<< orphan*/  rs_unresolved_tups; } ;
struct TYPE_13__ {TYPE_5__* tuple; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_ctid; } ;
typedef  TYPE_3__* RewriteState ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC12(RewriteState state)
{
	HASH_SEQ_STATUS seq_status;
	UnresolvedTup unresolved;

	/*
	 * Write any remaining tuples in the UnresolvedTups table. If we have any
	 * left, they should in fact be dead, but let's err on the safe side.
	 */
	FUNC5(&seq_status, state->rs_unresolved_tups);

	while ((unresolved = FUNC6(&seq_status)) != NULL)
	{
		FUNC0(&unresolved->tuple->t_data->t_ctid);
		FUNC10(state, unresolved->tuple);
	}

	/* Write the last page, if any */
	if (state->rs_buffer_valid)
	{
		if (state->rs_use_wal)
			FUNC8(&state->rs_new_rel->rd_node,
						MAIN_FORKNUM,
						state->rs_blockno,
						state->rs_buffer,
						true);
		FUNC4(state->rs_new_rel);

		FUNC2(state->rs_buffer, state->rs_blockno);

		FUNC11(state->rs_new_rel->rd_smgr, MAIN_FORKNUM, state->rs_blockno,
				   (char *) state->rs_buffer, true);
	}

	/*
	 * If the rel is WAL-logged, must fsync before commit.  We use heap_sync
	 * to ensure that the toast table gets fsync'd too.
	 *
	 * It's obvious that we must do this when not WAL-logging. It's less
	 * obvious that we have to do it even if we did WAL-log the pages. The
	 * reason is the same as in storage.c's RelationCopyStorage(): we're
	 * writing data that's not in shared buffers, and so a CHECKPOINT
	 * occurring during the rewriteheap operation won't have fsync'd data we
	 * wrote before the checkpoint.
	 */
	if (FUNC3(state->rs_new_rel))
		FUNC7(state->rs_new_rel);

	FUNC9(state);

	/* Deleting the context frees everything */
	FUNC1(state->rs_cxt);
}