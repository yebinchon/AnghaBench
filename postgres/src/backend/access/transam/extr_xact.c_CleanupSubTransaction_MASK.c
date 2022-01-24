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
typedef  TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/ * curTransactionOwner; TYPE_1__* parent; int /*<<< orphan*/  subTransactionId; } ;
struct TYPE_4__ {int /*<<< orphan*/  curTransactionOwner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurTransactionResourceOwner ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 TYPE_2__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ TRANS_ABORT ; 
 scalar_t__ TRANS_DEFAULT ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	TransactionState s = CurrentTransactionState;

	FUNC4("CleanupSubTransaction");

	if (s->state != TRANS_ABORT)
		FUNC6(WARNING, "CleanupSubTransaction while in %s state",
			 FUNC5(s->state));

	FUNC1(s->subTransactionId);

	CurrentResourceOwner = s->parent->curTransactionOwner;
	CurTransactionResourceOwner = s->parent->curTransactionOwner;
	if (s->curTransactionOwner)
		FUNC3(s->curTransactionOwner);
	s->curTransactionOwner = NULL;

	FUNC0();

	s->state = TRANS_DEFAULT;

	FUNC2();
}