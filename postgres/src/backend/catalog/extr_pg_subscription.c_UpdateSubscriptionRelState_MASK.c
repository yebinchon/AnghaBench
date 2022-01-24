#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int Anum_pg_subscription_rel_srsublsn ; 
 int Anum_pg_subscription_rel_srsubstate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Natts_pg_subscription_rel ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SUBSCRIPTIONRELMAP ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubscriptionRelRelationId ; 
 int /*<<< orphan*/  SubscriptionRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13(Oid subid, Oid relid, char state,
						   XLogRecPtr sublsn)
{
	Relation	rel;
	HeapTuple	tup;
	bool		nulls[Natts_pg_subscription_rel];
	Datum		values[Natts_pg_subscription_rel];
	bool		replaces[Natts_pg_subscription_rel];

	FUNC4(SubscriptionRelationId, subid, 0, AccessShareLock);

	rel = FUNC12(SubscriptionRelRelationId, RowExclusiveLock);

	/* Try finding existing mapping. */
	tup = FUNC7(SUBSCRIPTIONRELMAP,
							  FUNC5(relid),
							  FUNC5(subid));
	if (!FUNC2(tup))
		FUNC8(ERROR, "subscription table %u in subscription %u does not exist",
			 relid, subid);

	/* Update the tuple. */
	FUNC10(values, 0, sizeof(values));
	FUNC10(nulls, false, sizeof(nulls));
	FUNC10(replaces, false, sizeof(replaces));

	replaces[Anum_pg_subscription_rel_srsubstate - 1] = true;
	values[Anum_pg_subscription_rel_srsubstate - 1] = FUNC1(state);

	replaces[Anum_pg_subscription_rel_srsublsn - 1] = true;
	if (sublsn != InvalidXLogRecPtr)
		values[Anum_pg_subscription_rel_srsublsn - 1] = FUNC3(sublsn);
	else
		nulls[Anum_pg_subscription_rel_srsublsn - 1] = true;

	tup = FUNC9(tup, FUNC6(rel), values, nulls,
							replaces);

	/* Update the catalog. */
	FUNC0(rel, &tup->t_self, tup);

	/* Cleanup. */
	FUNC11(rel, NoLock);
}