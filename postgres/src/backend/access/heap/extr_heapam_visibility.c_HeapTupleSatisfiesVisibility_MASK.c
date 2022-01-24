#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int snapshot_type; } ;
typedef  TYPE_1__* Snapshot ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  SNAPSHOT_ANY 134 
#define  SNAPSHOT_DIRTY 133 
#define  SNAPSHOT_HISTORIC_MVCC 132 
#define  SNAPSHOT_MVCC 131 
#define  SNAPSHOT_NON_VACUUMABLE 130 
#define  SNAPSHOT_SELF 129 
#define  SNAPSHOT_TOAST 128 

bool
FUNC7(HeapTuple tup, Snapshot snapshot, Buffer buffer)
{
	switch (snapshot->snapshot_type)
	{
		case SNAPSHOT_MVCC:
			return FUNC3(tup, snapshot, buffer);
			break;
		case SNAPSHOT_SELF:
			return FUNC5(tup, snapshot, buffer);
			break;
		case SNAPSHOT_ANY:
			return FUNC0(tup, snapshot, buffer);
			break;
		case SNAPSHOT_TOAST:
			return FUNC6(tup, snapshot, buffer);
			break;
		case SNAPSHOT_DIRTY:
			return FUNC1(tup, snapshot, buffer);
			break;
		case SNAPSHOT_HISTORIC_MVCC:
			return FUNC2(tup, snapshot, buffer);
			break;
		case SNAPSHOT_NON_VACUUMABLE:
			return FUNC4(tup, snapshot, buffer);
			break;
	}

	return false;				/* keep compiler quiet */
}