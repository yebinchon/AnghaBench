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
struct TYPE_5__ {int /*<<< orphan*/  subenabled; int /*<<< orphan*/  subowner; int /*<<< orphan*/  subname; int /*<<< orphan*/  subdbid; } ;
struct TYPE_4__ {int /*<<< orphan*/  publications; void* synccommit; int /*<<< orphan*/ * slotname; void* conninfo; int /*<<< orphan*/  enabled; int /*<<< orphan*/  owner; void* name; int /*<<< orphan*/  dbid; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ Subscription ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_subscription ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_subscription_subconninfo ; 
 int /*<<< orphan*/  Anum_pg_subscription_subpublications ; 
 int /*<<< orphan*/  Anum_pg_subscription_subslotname ; 
 int /*<<< orphan*/  Anum_pg_subscription_subsynccommit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBSCRIPTIONOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

Subscription *
FUNC15(Oid subid, bool missing_ok)
{
	HeapTuple	tup;
	Subscription *sub;
	Form_pg_subscription subform;
	Datum		datum;
	bool		isnull;

	tup = FUNC8(SUBSCRIPTIONOID, FUNC6(subid));

	if (!FUNC4(tup))
	{
		if (missing_ok)
			return NULL;

		FUNC11(ERROR, "cache lookup failed for subscription %u", subid);
	}

	subform = (Form_pg_subscription) FUNC3(tup);

	sub = (Subscription *) FUNC12(sizeof(Subscription));
	sub->oid = subid;
	sub->dbid = subform->subdbid;
	sub->name = FUNC13(FUNC5(subform->subname));
	sub->owner = subform->subowner;
	sub->enabled = subform->subenabled;

	/* Get conninfo */
	datum = FUNC9(SUBSCRIPTIONOID,
							tup,
							Anum_pg_subscription_subconninfo,
							&isnull);
	FUNC0(!isnull);
	sub->conninfo = FUNC10(datum);

	/* Get slotname */
	datum = FUNC9(SUBSCRIPTIONOID,
							tup,
							Anum_pg_subscription_subslotname,
							&isnull);
	if (!isnull)
		sub->slotname = FUNC13(FUNC5(*FUNC2(datum)));
	else
		sub->slotname = NULL;

	/* Get synccommit */
	datum = FUNC9(SUBSCRIPTIONOID,
							tup,
							Anum_pg_subscription_subsynccommit,
							&isnull);
	FUNC0(!isnull);
	sub->synccommit = FUNC10(datum);

	/* Get publications */
	datum = FUNC9(SUBSCRIPTIONOID,
							tup,
							Anum_pg_subscription_subpublications,
							&isnull);
	FUNC0(!isnull);
	sub->publications = FUNC14(FUNC1(datum));

	FUNC7(tup);

	return sub;
}