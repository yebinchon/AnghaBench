#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TransactionState ;
struct TYPE_4__ {scalar_t__ state; struct TYPE_4__* name; int /*<<< orphan*/  curTransactionOwner; struct TYPE_4__* parent; int /*<<< orphan*/  curTransactionContext; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurTransactionContext ; 
 int /*<<< orphan*/  CurTransactionResourceOwner ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRANS_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	TransactionState s = CurrentTransactionState;

	if (s->state != TRANS_DEFAULT)
		FUNC2(WARNING, "PopTransaction while in %s state",
			 FUNC1(s->state));

	if (s->parent == NULL)
		FUNC2(FATAL, "PopTransaction with no parent");

	CurrentTransactionState = s->parent;

	/* Let's just make sure CurTransactionContext is good */
	CurTransactionContext = s->parent->curTransactionContext;
	FUNC0(CurTransactionContext);

	/* Ditto for ResourceOwner links */
	CurTransactionResourceOwner = s->parent->curTransactionOwner;
	CurrentResourceOwner = s->parent->curTransactionOwner;

	/* Free the old child structure */
	if (s->name)
		FUNC3(s->name);
	FUNC3(s);
}