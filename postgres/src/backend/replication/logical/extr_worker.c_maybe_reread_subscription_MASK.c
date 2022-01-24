#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  subid; } ;
struct TYPE_6__ {scalar_t__ dbid; int /*<<< orphan*/  synccommit; int /*<<< orphan*/  name; int /*<<< orphan*/  publications; int /*<<< orphan*/  slotname; int /*<<< orphan*/  conninfo; int /*<<< orphan*/  enabled; } ;
typedef  TYPE_1__ Subscription ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ApplyContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* MyLogicalRepWorker ; 
 TYPE_1__* MySubscription ; 
 int MySubscriptionValid ; 
 int /*<<< orphan*/  PGC_BACKEND ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(void)
{
	MemoryContext oldctx;
	Subscription *newsub;
	bool		started_tx = false;

	/* When cache state is valid there is nothing to do here. */
	if (MySubscriptionValid)
		return;

	/* This function might be called inside or outside of transaction. */
	if (!FUNC4())
	{
		FUNC7();
		started_tx = true;
	}

	/* Ensure allocations in permanent context. */
	oldctx = FUNC5(ApplyContext);

	newsub = FUNC3(MyLogicalRepWorker->subid, true);

	/*
	 * Exit if the subscription was removed. This normally should not happen
	 * as the worker gets killed during DROP SUBSCRIPTION.
	 */
	if (!newsub)
	{
		FUNC10(LOG,
				(FUNC11("logical replication apply worker for subscription \"%s\" will "
						"stop because the subscription was removed",
						MySubscription->name)));

		FUNC12(0);
	}

	/*
	 * Exit if the subscription was disabled. This normally should not happen
	 * as the worker gets killed during ALTER SUBSCRIPTION ... DISABLE.
	 */
	if (!newsub->enabled)
	{
		FUNC10(LOG,
				(FUNC11("logical replication apply worker for subscription \"%s\" will "
						"stop because the subscription was disabled",
						MySubscription->name)));

		FUNC12(0);
	}

	/*
	 * Exit if connection string was changed. The launcher will start new
	 * worker.
	 */
	if (FUNC13(newsub->conninfo, MySubscription->conninfo) != 0)
	{
		FUNC10(LOG,
				(FUNC11("logical replication apply worker for subscription \"%s\" will "
						"restart because the connection information was changed",
						MySubscription->name)));

		FUNC12(0);
	}

	/*
	 * Exit if subscription name was changed (it's used for
	 * fallback_application_name). The launcher will start new worker.
	 */
	if (FUNC13(newsub->name, MySubscription->name) != 0)
	{
		FUNC10(LOG,
				(FUNC11("logical replication apply worker for subscription \"%s\" will "
						"restart because subscription was renamed",
						MySubscription->name)));

		FUNC12(0);
	}

	/* !slotname should never happen when enabled is true. */
	FUNC0(newsub->slotname);

	/*
	 * We need to make new connection to new slot if slot name has changed so
	 * exit here as well if that's the case.
	 */
	if (FUNC13(newsub->slotname, MySubscription->slotname) != 0)
	{
		FUNC10(LOG,
				(FUNC11("logical replication apply worker for subscription \"%s\" will "
						"restart because the replication slot name was changed",
						MySubscription->name)));

		FUNC12(0);
	}

	/*
	 * Exit if publication list was changed. The launcher will start new
	 * worker.
	 */
	if (!FUNC9(newsub->publications, MySubscription->publications))
	{
		FUNC10(LOG,
				(FUNC11("logical replication apply worker for subscription \"%s\" will "
						"restart because subscription's publications were changed",
						MySubscription->name)));

		FUNC12(0);
	}

	/* Check for other changes that should never happen too. */
	if (newsub->dbid != MySubscription->dbid)
	{
		FUNC8(ERROR, "subscription %u changed unexpectedly",
			 MyLogicalRepWorker->subid);
	}

	/* Clean old subscription info and switch to new one. */
	FUNC2(MySubscription);
	MySubscription = newsub;

	FUNC5(oldctx);

	/* Change synchronous commit according to the user's wishes */
	FUNC6("synchronous_commit", MySubscription->synccommit,
					PGC_BACKEND, PGC_S_OVERRIDE);

	if (started_tx)
		FUNC1();

	MySubscriptionValid = true;
}