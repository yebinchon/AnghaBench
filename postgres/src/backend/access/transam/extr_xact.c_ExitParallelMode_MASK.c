#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TransactionState ;
struct TYPE_3__ {int parallelModeLevel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	TransactionState s = CurrentTransactionState;

	FUNC0(s->parallelModeLevel > 0);
	FUNC0(s->parallelModeLevel > 1 || !FUNC1());

	--s->parallelModeLevel;
}