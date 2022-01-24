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
struct AttachIndexCallbackState {int lockedParentTbl; scalar_t__ parentTblOid; scalar_t__ partitionOid; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
struct TYPE_4__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(const RangeVar *rv, Oid relOid, Oid oldRelOid,
							   void *arg)
{
	struct AttachIndexCallbackState *state;
	Form_pg_class classform;
	HeapTuple	tuple;

	state = (struct AttachIndexCallbackState *) arg;

	if (!state->lockedParentTbl)
	{
		FUNC3(state->parentTblOid, AccessShareLock);
		state->lockedParentTbl = true;
	}

	/*
	 * If we previously locked some other heap, and the name we're looking up
	 * no longer refers to an index on that relation, release the now-useless
	 * lock.  XXX maybe we should do *after* we verify whether the index does
	 * not actually belong to the same relation ...
	 */
	if (relOid != oldRelOid && FUNC5(state->partitionOid))
	{
		FUNC8(state->partitionOid, AccessShareLock);
		state->partitionOid = InvalidOid;
	}

	/* Didn't find a relation, so no need for locking or permission checks. */
	if (!FUNC5(relOid))
		return;

	tuple = FUNC7(RELOID, FUNC4(relOid));
	if (!FUNC1(tuple))
		return;					/* concurrently dropped, so nothing to do */
	classform = (Form_pg_class) FUNC0(tuple);
	if (classform->relkind != RELKIND_PARTITIONED_INDEX &&
		classform->relkind != RELKIND_INDEX)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC11("\"%s\" is not an index", rv->relname)));
	FUNC6(tuple);

	/*
	 * Since we need only examine the heap's tupledesc, an access share lock
	 * on it (preventing any DDL) is sufficient.
	 */
	state->partitionOid = FUNC2(relOid, false);
	FUNC3(state->partitionOid, AccessShareLock);
}