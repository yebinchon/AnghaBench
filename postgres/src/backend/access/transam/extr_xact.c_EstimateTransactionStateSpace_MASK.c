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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {int nChildXids; int /*<<< orphan*/  fullTransactionId; struct TYPE_3__* parent; } ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 TYPE_1__* CurrentTransactionState ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SerializedTransactionStateHeaderSize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

Size
FUNC3(void)
{
	TransactionState s;
	Size		nxids = 0;
	Size		size = SerializedTransactionStateHeaderSize;

	for (s = CurrentTransactionState; s != NULL; s = s->parent)
	{
		if (FUNC0(s->fullTransactionId))
			nxids = FUNC1(nxids, 1);
		nxids = FUNC1(nxids, s->nChildXids);
	}

	return FUNC1(size, FUNC2(sizeof(TransactionId), nxids));
}