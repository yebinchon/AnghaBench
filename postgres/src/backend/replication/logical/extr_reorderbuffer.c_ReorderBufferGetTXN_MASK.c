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
struct TYPE_7__ {int /*<<< orphan*/  txn_context; } ;
struct TYPE_6__ {int /*<<< orphan*/  subtxns; int /*<<< orphan*/  tuplecids; int /*<<< orphan*/  changes; } ;
typedef  TYPE_1__ ReorderBufferTXN ;
typedef  TYPE_2__ ReorderBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ReorderBufferTXN *
FUNC3(ReorderBuffer *rb)
{
	ReorderBufferTXN *txn;

	txn = (ReorderBufferTXN *)
		FUNC0(rb->txn_context, sizeof(ReorderBufferTXN));

	FUNC2(txn, 0, sizeof(ReorderBufferTXN));

	FUNC1(&txn->changes);
	FUNC1(&txn->tuplecids);
	FUNC1(&txn->subtxns);

	return txn;
}