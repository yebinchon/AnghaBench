#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_ctl ;
typedef  scalar_t__ TransactionId ;
struct TYPE_7__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
struct TYPE_6__ {int rs_logical_rewrite; int /*<<< orphan*/  rs_logical_mappings; int /*<<< orphan*/  rs_cxt; scalar_t__ rs_num_rewrite_mappings; int /*<<< orphan*/  rs_begin_lsn; scalar_t__ rs_logical_xmin; int /*<<< orphan*/  rs_old_rel; } ;
typedef  TYPE_1__* RewriteState ;
typedef  int /*<<< orphan*/  RewriteMappingFile ;
typedef  TYPE_2__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(RewriteState state)
{
	HASHCTL		hash_ctl;
	TransactionId logical_xmin;

	/*
	 * We only need to persist these mappings if the rewritten table can be
	 * accessed during logical decoding, if not, we can skip doing any
	 * additional work.
	 */
	state->rs_logical_rewrite =
		FUNC2(state->rs_old_rel);

	if (!state->rs_logical_rewrite)
		return;

	FUNC1(NULL, &logical_xmin);

	/*
	 * If there are no logical slots in progress we don't need to do anything,
	 * there cannot be any remappings for relevant rows yet. The relation's
	 * lock protects us against races.
	 */
	if (logical_xmin == InvalidTransactionId)
	{
		state->rs_logical_rewrite = false;
		return;
	}

	state->rs_logical_xmin = logical_xmin;
	state->rs_begin_lsn = FUNC0();
	state->rs_num_rewrite_mappings = 0;

	FUNC4(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(TransactionId);
	hash_ctl.entrysize = sizeof(RewriteMappingFile);
	hash_ctl.hcxt = state->rs_cxt;

	state->rs_logical_mappings =
		FUNC3("Logical rewrite mapping",
					128,		/* arbitrary initial size */
					&hash_ctl,
					HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
}