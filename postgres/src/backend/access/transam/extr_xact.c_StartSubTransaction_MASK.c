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
struct TYPE_5__ {scalar_t__ state; TYPE_1__* parent; int /*<<< orphan*/  subTransactionId; } ;
struct TYPE_4__ {int /*<<< orphan*/  subTransactionId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* CurrentTransactionState ; 
 int /*<<< orphan*/  SUBXACT_EVENT_START_SUB ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ TRANS_DEFAULT ; 
 scalar_t__ TRANS_INPROGRESS ; 
 scalar_t__ TRANS_START ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	TransactionState s = CurrentTransactionState;

	if (s->state != TRANS_DEFAULT)
		FUNC6(WARNING, "StartSubTransaction while in %s state",
			 FUNC5(s->state));

	s->state = TRANS_START;

	/*
	 * Initialize subsystems for new subtransaction
	 *
	 * must initialize resource-management stuff first
	 */
	FUNC1();
	FUNC2();
	FUNC0();

	s->state = TRANS_INPROGRESS;

	/*
	 * Call start-of-subxact callbacks
	 */
	FUNC3(SUBXACT_EVENT_START_SUB, s->subTransactionId,
						 s->parent->subTransactionId);

	FUNC4("StartSubTransaction");
}