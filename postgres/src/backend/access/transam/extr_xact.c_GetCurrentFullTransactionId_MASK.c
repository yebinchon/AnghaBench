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
struct TYPE_4__ {int /*<<< orphan*/  fullTransactionId; } ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

FullTransactionId
FUNC2(void)
{
	TransactionState s = CurrentTransactionState;

	if (!FUNC1(s->fullTransactionId))
		FUNC0(s);
	return s->fullTransactionId;
}