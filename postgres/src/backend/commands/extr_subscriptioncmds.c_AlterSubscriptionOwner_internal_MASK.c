#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  subowner; int /*<<< orphan*/  subname; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_subscription ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_SUBSCRIPTION ; 
 int /*<<< orphan*/  SubscriptionRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(Relation rel, HeapTuple tup, Oid newOwnerId)
{
	Form_pg_subscription form;

	form = (Form_pg_subscription) FUNC1(tup);

	if (form->subowner == newOwnerId)
		return;

	if (!FUNC11(form->oid, FUNC2()))
		FUNC5(ACLCHECK_NOT_OWNER, OBJECT_SUBSCRIPTION,
					   FUNC4(form->subname));

	/* New owner must be a superuser */
	if (!FUNC12(newOwnerId))
		FUNC7(ERROR,
				(FUNC8(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC10("permission denied to change owner of subscription \"%s\"",
						FUNC4(form->subname)),
				 FUNC9("The owner of a subscription must be a superuser.")));

	form->subowner = newOwnerId;
	FUNC0(rel, &tup->t_self, tup);

	/* Update owner dependency reference */
	FUNC6(SubscriptionRelationId,
							form->oid,
							newOwnerId);

	FUNC3(SubscriptionRelationId,
							  form->oid, 0);
}