#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  BufferDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_DIRTY ; 
 int BM_IO_IN_PROGRESS ; 
 int BM_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * InProgressBuf ; 
 int IsForInput ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC7(BufferDesc *buf, bool forInput)
{
	uint32		buf_state;

	FUNC0(!InProgressBuf);

	for (;;)
	{
		/*
		 * Grab the io_in_progress lock so that other processes can wait for
		 * me to finish the I/O.
		 */
		FUNC2(FUNC1(buf), LW_EXCLUSIVE);

		buf_state = FUNC4(buf);

		if (!(buf_state & BM_IO_IN_PROGRESS))
			break;

		/*
		 * The only way BM_IO_IN_PROGRESS could be set when the io_in_progress
		 * lock isn't held is if the process doing the I/O is recovering from
		 * an error (see AbortBufferIO).  If that's the case, we must wait for
		 * him to get unwedged.
		 */
		FUNC5(buf, buf_state);
		FUNC3(FUNC1(buf));
		FUNC6(buf);
	}

	/* Once we get here, there is definitely no I/O active on this buffer */

	if (forInput ? (buf_state & BM_VALID) : !(buf_state & BM_DIRTY))
	{
		/* someone else already did the I/O */
		FUNC5(buf, buf_state);
		FUNC3(FUNC1(buf));
		return false;
	}

	buf_state |= BM_IO_IN_PROGRESS;
	FUNC5(buf, buf_state);

	InProgressBuf = buf;
	IsForInput = forInput;

	return true;
}