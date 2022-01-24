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
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ BufferDesc ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BM_PERMANENT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

bool
FUNC6(Buffer buffer)
{
	BufferDesc *bufHdr;

	/* Local buffers are used only for temp relations. */
	if (FUNC1(buffer))
		return false;

	/* Make sure we've got a real buffer, and that we hold a pin on it. */
	FUNC0(FUNC3(buffer));
	FUNC0(FUNC2(buffer));

	/*
	 * BM_PERMANENT can't be changed while we hold a pin on the buffer, so we
	 * need not bother with the buffer header spinlock.  Even if someone else
	 * changes the buffer header state while we're doing this, the state is
	 * changed atomically, so we'll read the old value or the new value, but
	 * not random garbage.
	 */
	bufHdr = FUNC4(buffer - 1);
	return (FUNC5(&bufHdr->state) & BM_PERMANENT) != 0;
}