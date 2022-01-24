#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  availableList; } ;
struct TYPE_8__ {int /*<<< orphan*/  inLink; int /*<<< orphan*/  outLink; TYPE_1__* sxactIn; TYPE_1__* sxactOut; } ;
struct TYPE_7__ {int /*<<< orphan*/  possibleUnsafeConflicts; } ;
typedef  TYPE_1__ SERIALIZABLEXACT ;
typedef  TYPE_2__* RWConflict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  RWConflictData ; 
 TYPE_6__* RWConflictPool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outLink ; 

__attribute__((used)) static void
FUNC10(SERIALIZABLEXACT *roXact,
						  SERIALIZABLEXACT *activeXact)
{
	RWConflict	conflict;

	FUNC0(roXact != activeXact);
	FUNC0(FUNC4(roXact));
	FUNC0(!FUNC4(activeXact));

	conflict = (RWConflict)
		FUNC3(&RWConflictPool->availableList,
					 &RWConflictPool->availableList,
					 FUNC9(RWConflictData, outLink));
	if (!conflict)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_OUT_OF_MEMORY),
				 FUNC8("not enough elements in RWConflictPool to record a potential read/write conflict"),
				 FUNC7("You might need to run fewer transactions at a time or increase max_connections.")));

	FUNC1(&conflict->outLink);

	conflict->sxactOut = activeXact;
	conflict->sxactIn = roXact;
	FUNC2(&activeXact->possibleUnsafeConflicts,
						 &conflict->outLink);
	FUNC2(&roXact->possibleUnsafeConflicts,
						 &conflict->inLink);
}