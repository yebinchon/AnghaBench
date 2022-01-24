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
struct TYPE_8__ {scalar_t__ perBackendXactIds; } ;
struct TYPE_7__ {int /*<<< orphan*/  PagePrecedes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  LWTRANCHE_MXACTMEMBER_BUFFERS ; 
 int /*<<< orphan*/  LWTRANCHE_MXACTOFFSET_BUFFERS ; 
 scalar_t__ MaxOldestSlot ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MultiXactMemberControlLock ; 
 TYPE_1__* MultiXactMemberCtl ; 
 int /*<<< orphan*/  MultiXactMemberPagePrecedes ; 
 int /*<<< orphan*/  MultiXactOffsetControlLock ; 
 TYPE_1__* MultiXactOffsetCtl ; 
 int /*<<< orphan*/  MultiXactOffsetPagePrecedes ; 
 TYPE_2__* MultiXactState ; 
 int /*<<< orphan*/  NUM_MXACTMEMBER_BUFFERS ; 
 int /*<<< orphan*/  NUM_MXACTOFFSET_BUFFERS ; 
 scalar_t__ OldestMemberMXactId ; 
 scalar_t__ OldestVisibleMXactId ; 
 int /*<<< orphan*/  SHARED_MULTIXACT_STATE_SIZE ; 
 TYPE_2__* FUNC2 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void
FUNC5(void)
{
	bool		found;

	FUNC4(DEBUG2, "Shared Memory Init for MultiXact");

	MultiXactOffsetCtl->PagePrecedes = MultiXactOffsetPagePrecedes;
	MultiXactMemberCtl->PagePrecedes = MultiXactMemberPagePrecedes;

	FUNC3(MultiXactOffsetCtl,
				  "multixact_offset", NUM_MXACTOFFSET_BUFFERS, 0,
				  MultiXactOffsetControlLock, "pg_multixact/offsets",
				  LWTRANCHE_MXACTOFFSET_BUFFERS);
	FUNC3(MultiXactMemberCtl,
				  "multixact_member", NUM_MXACTMEMBER_BUFFERS, 0,
				  MultiXactMemberControlLock, "pg_multixact/members",
				  LWTRANCHE_MXACTMEMBER_BUFFERS);

	/* Initialize our shared state struct */
	MultiXactState = FUNC2("Shared MultiXact State",
									 SHARED_MULTIXACT_STATE_SIZE,
									 &found);
	if (!IsUnderPostmaster)
	{
		FUNC0(!found);

		/* Make sure we zero out the per-backend state */
		FUNC1(MultiXactState, 0, SHARED_MULTIXACT_STATE_SIZE);
	}
	else
		FUNC0(found);

	/*
	 * Set up array pointers.  Note that perBackendXactIds[0] is wasted space
	 * since we only use indexes 1..MaxOldestSlot in each array.
	 */
	OldestMemberMXactId = MultiXactState->perBackendXactIds;
	OldestVisibleMXactId = OldestMemberMXactId + MaxOldestSlot;
}