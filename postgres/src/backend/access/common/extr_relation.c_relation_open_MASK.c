#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MAX_LOCKMODES ; 
 int /*<<< orphan*/  MyXactFlags ; 
 scalar_t__ NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XACT_FLAGS_ACCESSEDTEMPNAMESPACE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

Relation
FUNC9(Oid relationId, LOCKMODE lockmode)
{
	Relation	r;

	FUNC0(lockmode >= NoLock && lockmode < MAX_LOCKMODES);

	/* Get the lock before trying to open the relcache entry */
	if (lockmode != NoLock)
		FUNC3(relationId, lockmode);

	/* The relcache does all the real work... */
	r = FUNC4(relationId);

	if (!FUNC5(r))
		FUNC7(ERROR, "could not open relation with OID %u", relationId);

	/*
	 * If we didn't get the lock ourselves, assert that caller holds one,
	 * except in bootstrap mode where no locks are used.
	 */
	FUNC0(lockmode != NoLock ||
		   FUNC2() ||
		   FUNC1(r, AccessShareLock, true));

	/* Make note that we've accessed a temporary relation */
	if (FUNC6(r))
		MyXactFlags |= XACT_FLAGS_ACCESSEDTEMPNAMESPACE;

	FUNC8(r);

	return r;
}