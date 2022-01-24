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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_7__ {int /*<<< orphan*/  context; } ;
struct TYPE_6__ {scalar_t__ ninvalidations; int /*<<< orphan*/ * invalidations; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;
typedef  TYPE_1__ ReorderBufferTXN ;
typedef  TYPE_2__ ReorderBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC5(ReorderBuffer *rb, TransactionId xid,
							  XLogRecPtr lsn, Size nmsgs,
							  SharedInvalidationMessage *msgs)
{
	ReorderBufferTXN *txn;

	txn = FUNC2(rb, xid, true, NULL, lsn, true);

	if (txn->ninvalidations != 0)
		FUNC3(ERROR, "only ever add one set of invalidations");

	FUNC0(nmsgs > 0);

	txn->ninvalidations = nmsgs;
	txn->invalidations = (SharedInvalidationMessage *)
		FUNC1(rb->context,
						   sizeof(SharedInvalidationMessage) * nmsgs);
	FUNC4(txn->invalidations, msgs,
		   sizeof(SharedInvalidationMessage) * nmsgs);
}