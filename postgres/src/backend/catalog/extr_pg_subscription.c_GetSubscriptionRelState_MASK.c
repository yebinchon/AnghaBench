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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_subscription_rel_srsublsn ; 
 int /*<<< orphan*/  Anum_pg_subscription_rel_srsubstate ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char SUBREL_STATE_UNKNOWN ; 
 int /*<<< orphan*/  SUBSCRIPTIONRELMAP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubscriptionRelRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char
FUNC11(Oid subid, Oid relid, XLogRecPtr *sublsn,
						bool missing_ok)
{
	Relation	rel;
	HeapTuple	tup;
	char		substate;
	bool		isnull;
	Datum		d;

	rel = FUNC10(SubscriptionRelRelationId, AccessShareLock);

	/* Try finding the mapping. */
	tup = FUNC6(SUBSCRIPTIONRELMAP,
						  FUNC4(relid),
						  FUNC4(subid));

	if (!FUNC3(tup))
	{
		if (missing_ok)
		{
			FUNC9(rel, AccessShareLock);
			*sublsn = InvalidXLogRecPtr;
			return SUBREL_STATE_UNKNOWN;
		}

		FUNC8(ERROR, "subscription table %u in subscription %u does not exist",
			 relid, subid);
	}

	/* Get the state. */
	d = FUNC7(SUBSCRIPTIONRELMAP, tup,
						Anum_pg_subscription_rel_srsubstate, &isnull);
	FUNC0(!isnull);
	substate = FUNC1(d);
	d = FUNC7(SUBSCRIPTIONRELMAP, tup,
						Anum_pg_subscription_rel_srsublsn, &isnull);
	if (isnull)
		*sublsn = InvalidXLogRecPtr;
	else
		*sublsn = FUNC2(d);

	/* Cleanup */
	FUNC5(tup);
	FUNC9(rel, AccessShareLock);

	return substate;
}