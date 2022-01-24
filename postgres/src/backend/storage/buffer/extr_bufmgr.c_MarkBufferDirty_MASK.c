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
typedef  int uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  shared_blks_dirtied; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ BufferDesc ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_DIRTY ; 
 int BM_JUST_DIRTIED ; 
 int BM_LOCKED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ VacuumCostActive ; 
 int /*<<< orphan*/  VacuumCostBalance ; 
 scalar_t__ VacuumCostPageDirty ; 
 int /*<<< orphan*/  VacuumPageDirty ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_2__ pgBufferUsage ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(Buffer buffer)
{
	BufferDesc *bufHdr;
	uint32		buf_state;
	uint32		old_buf_state;

	if (!FUNC5(buffer))
		FUNC10(ERROR, "bad buffer ID: %d", buffer);

	if (FUNC3(buffer))
	{
		FUNC8(buffer);
		return;
	}

	bufHdr = FUNC6(buffer - 1);

	FUNC0(FUNC4(buffer));
	FUNC0(FUNC7(FUNC2(bufHdr),
								LW_EXCLUSIVE));

	old_buf_state = FUNC12(&bufHdr->state);
	for (;;)
	{
		if (old_buf_state & BM_LOCKED)
			old_buf_state = FUNC9(bufHdr);

		buf_state = old_buf_state;

		FUNC0(FUNC1(buf_state) > 0);
		buf_state |= BM_DIRTY | BM_JUST_DIRTIED;

		if (FUNC11(&bufHdr->state, &old_buf_state,
										   buf_state))
			break;
	}

	/*
	 * If the buffer was not dirty already, do vacuum accounting.
	 */
	if (!(old_buf_state & BM_DIRTY))
	{
		VacuumPageDirty++;
		pgBufferUsage.shared_blks_dirtied++;
		if (VacuumCostActive)
			VacuumCostBalance += VacuumCostPageDirty;
	}
}