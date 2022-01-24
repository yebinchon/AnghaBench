#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sxactIn; TYPE_1__* sxactOut; int /*<<< orphan*/  inLink; } ;
struct TYPE_7__ {int /*<<< orphan*/  possibleUnsafeConflicts; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ SERIALIZABLEXACT ;
typedef  TYPE_2__* RWConflict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RWConflictData ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SXACT_FLAG_RO_UNSAFE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  inLink ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(SERIALIZABLEXACT *sxact)
{
	RWConflict	conflict,
				nextConflict;

	FUNC0(FUNC4(sxact));
	FUNC0(!FUNC3(sxact));

	sxact->flags |= SXACT_FLAG_RO_UNSAFE;

	/*
	 * We know this isn't a safe snapshot, so we can stop looking for other
	 * potential conflicts.
	 */
	conflict = (RWConflict)
		FUNC2(&sxact->possibleUnsafeConflicts,
					 &sxact->possibleUnsafeConflicts,
					 FUNC5(RWConflictData, inLink));
	while (conflict)
	{
		nextConflict = (RWConflict)
			FUNC2(&sxact->possibleUnsafeConflicts,
						 &conflict->inLink,
						 FUNC5(RWConflictData, inLink));

		FUNC0(!FUNC4(conflict->sxactOut));
		FUNC0(sxact == conflict->sxactIn);

		FUNC1(conflict);

		conflict = nextConflict;
	}
}