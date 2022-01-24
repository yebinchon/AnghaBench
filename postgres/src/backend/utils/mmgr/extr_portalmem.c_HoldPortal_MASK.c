#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* activeSubid; void* createSubid; int /*<<< orphan*/ * resowner; } ;
typedef  TYPE_1__* Portal ;

/* Variables and functions */
 void* InvalidSubTransactionId ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(Portal portal)
{
	/*
	 * Note that PersistHoldablePortal() must release all resources used by
	 * the portal that are local to the creating transaction.
	 */
	FUNC1(portal);
	FUNC0(portal);

	/* drop cached plan reference, if any */
	FUNC2(portal);

	/*
	 * Any resources belonging to the portal will be released in the upcoming
	 * transaction-wide cleanup; the portal will no longer have its own
	 * resources.
	 */
	portal->resowner = NULL;

	/*
	 * Having successfully exported the holdable cursor, mark it as not
	 * belonging to this transaction.
	 */
	portal->createSubid = InvalidSubTransactionId;
	portal->activeSubid = InvalidSubTransactionId;
}