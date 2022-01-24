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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {scalar_t__ snapshot_type; scalar_t__ xcnt; scalar_t__ subxcnt; scalar_t__ takenDuringRecovery; int /*<<< orphan*/  suboverflowed; } ;
typedef  TYPE_1__* Snapshot ;
typedef  int Size ;
typedef  int /*<<< orphan*/  SerializedSnapshotData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* InvalidSnapshot ; 
 scalar_t__ SNAPSHOT_MVCC ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

Size
FUNC3(Snapshot snap)
{
	Size		size;

	FUNC0(snap != InvalidSnapshot);
	FUNC0(snap->snapshot_type == SNAPSHOT_MVCC);

	/* We allocate any XID arrays needed in the same palloc block. */
	size = FUNC1(sizeof(SerializedSnapshotData),
					FUNC2(snap->xcnt, sizeof(TransactionId)));
	if (snap->subxcnt > 0 &&
		(!snap->suboverflowed || snap->takenDuringRecovery))
		size = FUNC1(size,
						FUNC2(snap->subxcnt, sizeof(TransactionId)));

	return size;
}