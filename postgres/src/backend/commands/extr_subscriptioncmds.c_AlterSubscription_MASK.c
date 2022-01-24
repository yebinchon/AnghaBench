#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_18__ {char* subname; int kind; char* conninfo; int /*<<< orphan*/  options; int /*<<< orphan*/  publication; } ;
struct TYPE_17__ {int /*<<< orphan*/  oid; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_15__ {int /*<<< orphan*/  enabled; int /*<<< orphan*/  publications; int /*<<< orphan*/  slotname; } ;
typedef  TYPE_1__ Subscription ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_subscription ;
typedef  int Datum ;
typedef  TYPE_4__ AlterSubscriptionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
#define  ALTER_SUBSCRIPTION_CONNECTION 132 
#define  ALTER_SUBSCRIPTION_ENABLED 131 
#define  ALTER_SUBSCRIPTION_OPTIONS 130 
#define  ALTER_SUBSCRIPTION_PUBLICATION 129 
#define  ALTER_SUBSCRIPTION_REFRESH 128 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  Anum_pg_subscription_subconninfo ; 
 int /*<<< orphan*/  Anum_pg_subscription_subenabled ; 
 int /*<<< orphan*/  Anum_pg_subscription_subpublications ; 
 int /*<<< orphan*/  Anum_pg_subscription_subslotname ; 
 int /*<<< orphan*/  Anum_pg_subscription_subsynccommit ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int Natts_pg_subscription ; 
 int /*<<< orphan*/  OBJECT_SUBSCRIPTION ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SUBSCRIPTIONNAME ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubscriptionRelationId ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 TYPE_2__* FUNC24 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int*,int,int) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int*,char**,int*,char**,int*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 

ObjectAddress
FUNC33(AlterSubscriptionStmt *stmt)
{
	Relation	rel;
	ObjectAddress myself;
	bool		nulls[Natts_pg_subscription];
	bool		replaces[Natts_pg_subscription];
	Datum		values[Natts_pg_subscription];
	HeapTuple	tup;
	Oid			subid;
	bool		update_tuple = false;
	Subscription *sub;
	Form_pg_subscription form;

	rel = FUNC31(SubscriptionRelationId, RowExclusiveLock);

	/* Fetch the existing tuple. */
	tup = FUNC16(SUBSCRIPTIONNAME, MyDatabaseId,
							  FUNC4(stmt->subname));

	if (!FUNC11(tup))
		FUNC19(ERROR,
				(FUNC20(ERRCODE_UNDEFINED_OBJECT),
				 FUNC22("subscription \"%s\" does not exist",
						stmt->subname)));

	form = (Form_pg_subscription) FUNC8(tup);
	subid = form->oid;

	/* must be owner */
	if (!FUNC28(subid, FUNC10()))
		FUNC17(ACLCHECK_NOT_OWNER, OBJECT_SUBSCRIPTION,
					   stmt->subname);

	sub = FUNC9(subid, false);

	/* Lock the subscription so nobody else can do anything with it. */
	FUNC13(SubscriptionRelationId, subid, 0, AccessExclusiveLock);

	/* Form a new tuple. */
	FUNC26(values, 0, sizeof(values));
	FUNC26(nulls, false, sizeof(nulls));
	FUNC26(replaces, false, sizeof(replaces));

	switch (stmt->kind)
	{
		case ALTER_SUBSCRIPTION_OPTIONS:
			{
				char	   *slotname;
				bool		slotname_given;
				char	   *synchronous_commit;

				FUNC27(stmt->options, NULL, NULL, NULL,
										   NULL, &slotname_given, &slotname,
										   NULL, &synchronous_commit, NULL);

				if (slotname_given)
				{
					if (sub->enabled && !slotname)
						FUNC19(ERROR,
								(FUNC20(ERRCODE_SYNTAX_ERROR),
								 FUNC22("cannot set %s for enabled subscription",
										"slot_name = NONE")));

					if (slotname)
						values[Anum_pg_subscription_subslotname - 1] =
							FUNC7(namein, FUNC4(slotname));
					else
						nulls[Anum_pg_subscription_subslotname - 1] = true;
					replaces[Anum_pg_subscription_subslotname - 1] = true;
				}

				if (synchronous_commit)
				{
					values[Anum_pg_subscription_subsynccommit - 1] =
						FUNC5(synchronous_commit);
					replaces[Anum_pg_subscription_subsynccommit - 1] = true;
				}

				update_tuple = true;
				break;
			}

		case ALTER_SUBSCRIPTION_ENABLED:
			{
				bool		enabled,
							enabled_given;

				FUNC27(stmt->options, NULL,
										   &enabled_given, &enabled, NULL,
										   NULL, NULL, NULL, NULL, NULL);
				FUNC2(enabled_given);

				if (!sub->slotname && enabled)
					FUNC19(ERROR,
							(FUNC20(ERRCODE_SYNTAX_ERROR),
							 FUNC22("cannot enable subscription that does not have a slot name")));

				values[Anum_pg_subscription_subenabled - 1] =
					FUNC3(enabled);
				replaces[Anum_pg_subscription_subenabled - 1] = true;

				if (enabled)
					FUNC1();

				update_tuple = true;
				break;
			}

		case ALTER_SUBSCRIPTION_CONNECTION:
			/* Load the library providing us libpq calls. */
			FUNC25("libpqwalreceiver", false);
			/* Check the connection info string. */
			FUNC32(stmt->conninfo);

			values[Anum_pg_subscription_subconninfo - 1] =
				FUNC5(stmt->conninfo);
			replaces[Anum_pg_subscription_subconninfo - 1] = true;
			update_tuple = true;
			break;

		case ALTER_SUBSCRIPTION_PUBLICATION:
			{
				bool		copy_data;
				bool		refresh;

				FUNC27(stmt->options, NULL, NULL, NULL,
										   NULL, NULL, NULL, &copy_data,
										   NULL, &refresh);

				values[Anum_pg_subscription_subpublications - 1] =
					FUNC29(stmt->publication);
				replaces[Anum_pg_subscription_subpublications - 1] = true;

				update_tuple = true;

				/* Refresh if user asked us to. */
				if (refresh)
				{
					if (!sub->enabled)
						FUNC19(ERROR,
								(FUNC20(ERRCODE_SYNTAX_ERROR),
								 FUNC22("ALTER SUBSCRIPTION with refresh is not allowed for disabled subscriptions"),
								 FUNC21("Use ALTER SUBSCRIPTION ... SET PUBLICATION ... WITH (refresh = false).")));

					/* Make sure refresh sees the new list of publications. */
					sub->publications = stmt->publication;

					FUNC0(sub, copy_data);
				}

				break;
			}

		case ALTER_SUBSCRIPTION_REFRESH:
			{
				bool		copy_data;

				if (!sub->enabled)
					FUNC19(ERROR,
							(FUNC20(ERRCODE_SYNTAX_ERROR),
							 FUNC22("ALTER SUBSCRIPTION ... REFRESH is not allowed for disabled subscriptions")));

				FUNC27(stmt->options, NULL, NULL, NULL,
										   NULL, NULL, NULL, &copy_data,
										   NULL, NULL);

				FUNC0(sub, copy_data);

				break;
			}

		default:
			FUNC18(ERROR, "unrecognized ALTER SUBSCRIPTION kind %d",
				 stmt->kind);
	}

	/* Update the catalog if needed. */
	if (update_tuple)
	{
		tup = FUNC24(tup, FUNC15(rel), values, nulls,
								replaces);

		FUNC6(rel, &tup->t_self, tup);

		FUNC23(tup);
	}

	FUNC30(rel, RowExclusiveLock);

	FUNC14(myself, SubscriptionRelationId, subid);

	FUNC12(SubscriptionRelationId, subid, 0);

	return myself;
}