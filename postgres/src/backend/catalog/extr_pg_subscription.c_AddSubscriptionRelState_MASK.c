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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int Anum_pg_subscription_rel_srrelid ; 
 int Anum_pg_subscription_rel_srsubid ; 
 int Anum_pg_subscription_rel_srsublsn ; 
 int Anum_pg_subscription_rel_srsubstate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Natts_pg_subscription_rel ; 
 int /*<<< orphan*/  NoLock ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SUBSCRIPTIONRELMAP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SubscriptionRelRelationId ; 
 int /*<<< orphan*/  SubscriptionRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(Oid subid, Oid relid, char state,
						XLogRecPtr sublsn)
{
	Relation	rel;
	HeapTuple	tup;
	bool		nulls[Natts_pg_subscription_rel];
	Datum		values[Natts_pg_subscription_rel];

	FUNC4(SubscriptionRelationId, subid, 0, AccessShareLock);

	rel = FUNC13(SubscriptionRelRelationId, RowExclusiveLock);

	/* Try finding existing mapping. */
	tup = FUNC7(SUBSCRIPTIONRELMAP,
							  FUNC5(relid),
							  FUNC5(subid));
	if (FUNC2(tup))
		FUNC8(ERROR, "subscription table %u in subscription %u already exists",
			 relid, subid);

	/* Form the tuple. */
	FUNC11(values, 0, sizeof(values));
	FUNC11(nulls, false, sizeof(nulls));
	values[Anum_pg_subscription_rel_srsubid - 1] = FUNC5(subid);
	values[Anum_pg_subscription_rel_srrelid - 1] = FUNC5(relid);
	values[Anum_pg_subscription_rel_srsubstate - 1] = FUNC1(state);
	if (sublsn != InvalidXLogRecPtr)
		values[Anum_pg_subscription_rel_srsublsn - 1] = FUNC3(sublsn);
	else
		nulls[Anum_pg_subscription_rel_srsublsn - 1] = true;

	tup = FUNC9(FUNC6(rel), values, nulls);

	/* Insert tuple into catalog. */
	FUNC0(rel, tup);

	FUNC10(tup);

	/* Cleanup. */
	FUNC12(rel, NoLock);
}