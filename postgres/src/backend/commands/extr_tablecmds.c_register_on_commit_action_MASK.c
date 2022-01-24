#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  deleting_subid; int /*<<< orphan*/  creating_subid; scalar_t__ oncommit; int /*<<< orphan*/  relid; } ;
typedef  TYPE_1__ OnCommitItem ;
typedef  scalar_t__ OnCommitAction ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  InvalidSubTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ONCOMMIT_NOOP ; 
 scalar_t__ ONCOMMIT_PRESERVE_ROWS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_commits ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4(Oid relid, OnCommitAction action)
{
	OnCommitItem *oc;
	MemoryContext oldcxt;

	/*
	 * We needn't bother registering the relation unless there is an ON COMMIT
	 * action we need to take.
	 */
	if (action == ONCOMMIT_NOOP || action == ONCOMMIT_PRESERVE_ROWS)
		return;

	oldcxt = FUNC1(CacheMemoryContext);

	oc = (OnCommitItem *) FUNC3(sizeof(OnCommitItem));
	oc->relid = relid;
	oc->oncommit = action;
	oc->creating_subid = FUNC0();
	oc->deleting_subid = InvalidSubTransactionId;

	/*
	 * We use lcons() here so that ON COMMIT actions are processed in reverse
	 * order of registration.  That might not be essential but it seems
	 * reasonable.
	 */
	on_commits = FUNC2(oc, on_commits);

	FUNC1(oldcxt);
}