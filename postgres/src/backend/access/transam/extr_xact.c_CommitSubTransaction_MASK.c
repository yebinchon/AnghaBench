#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/ * curTransactionOwner; TYPE_1__* parent; int /*<<< orphan*/  prevXactReadOnly; int /*<<< orphan*/  nestingLevel; int /*<<< orphan*/  subTransactionId; int /*<<< orphan*/  gucNestLevel; int /*<<< orphan*/  fullTransactionId; scalar_t__ parallelModeLevel; } ;
struct TYPE_4__ {int /*<<< orphan*/ * curTransactionOwner; int /*<<< orphan*/  subTransactionId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/ * CurTransactionResourceOwner ; 
 int /*<<< orphan*/ * CurrentResourceOwner ; 
 TYPE_2__* CurrentTransactionState ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_AFTER_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_BEFORE_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_LOCKS ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SUBXACT_EVENT_COMMIT_SUB ; 
 int /*<<< orphan*/  SUBXACT_EVENT_PRE_COMMIT_SUB ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 scalar_t__ TRANS_COMMIT ; 
 scalar_t__ TRANS_DEFAULT ; 
 scalar_t__ TRANS_INPROGRESS ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XactReadOnly ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC31(void)
{
	TransactionState s = CurrentTransactionState;

	FUNC26("CommitSubTransaction");

	if (s->state != TRANS_INPROGRESS)
		FUNC30(WARNING, "CommitSubTransaction while in %s state",
			 FUNC27(s->state));

	/* Pre-commit processing goes here */

	FUNC19(SUBXACT_EVENT_PRE_COMMIT_SUB, s->subTransactionId,
						 s->parent->subTransactionId);

	/* If in parallel mode, clean up workers and exit parallel mode. */
	if (FUNC22())
	{
		FUNC7(true, s->subTransactionId);
		s->parallelModeLevel = 0;
	}

	/* Do the actual "commit", such as it is */
	s->state = TRANS_COMMIT;

	/* Must CCI to ensure commands of subtransaction are seen as done */
	FUNC20();

	/*
	 * Prior to 8.4 we marked subcommit in clog at this point.  We now only
	 * perform that step, if required, as part of the atomic update of the
	 * whole transaction tree at top level commit or abort.
	 */

	/* Post-commit cleanup */
	if (FUNC21(s->fullTransactionId))
		FUNC17();
	FUNC0(true);
	FUNC15(s->subTransactionId,
						s->parent->subTransactionId,
						s->parent->curTransactionOwner);
	FUNC5(true, s->subTransactionId,
							s->parent->subTransactionId);
	FUNC14();

	FUNC19(SUBXACT_EVENT_COMMIT_SUB, s->subTransactionId,
						 s->parent->subTransactionId);

	FUNC25(s->curTransactionOwner,
						 RESOURCE_RELEASE_BEFORE_LOCKS,
						 true, false);
	FUNC9(true, s->subTransactionId,
							  s->parent->subTransactionId);
	FUNC4(true);
	FUNC18();

	/*
	 * The only lock we actually release here is the subtransaction XID lock.
	 */
	CurrentResourceOwner = s->curTransactionOwner;
	if (FUNC21(s->fullTransactionId))
		FUNC28(FUNC29(s->fullTransactionId));

	/*
	 * Other locks should get transferred to their parent resource owner.
	 */
	FUNC25(s->curTransactionOwner,
						 RESOURCE_RELEASE_LOCKS,
						 true, false);
	FUNC25(s->curTransactionOwner,
						 RESOURCE_RELEASE_AFTER_LOCKS,
						 true, false);

	FUNC12(true, s->gucNestLevel);
	FUNC10(true, s->subTransactionId);
	FUNC11(true, s->subTransactionId,
								  s->parent->subTransactionId);
	FUNC6(true, s->subTransactionId,
						  s->parent->subTransactionId);
	FUNC2(true, s->subTransactionId,
					  s->parent->subTransactionId);
	FUNC3(true, s->nestingLevel);
	FUNC8(true, s->nestingLevel);
	FUNC16(s->nestingLevel);
	FUNC1(true, s->nestingLevel);

	/*
	 * We need to restore the upper transaction's read-only state, in case the
	 * upper is read-write while the child is read-only; GUC will incorrectly
	 * think it should leave the child state in place.
	 */
	XactReadOnly = s->prevXactReadOnly;

	CurrentResourceOwner = s->parent->curTransactionOwner;
	CurTransactionResourceOwner = s->parent->curTransactionOwner;
	FUNC24(s->curTransactionOwner);
	s->curTransactionOwner = NULL;

	FUNC13();

	s->state = TRANS_DEFAULT;

	FUNC23();
}