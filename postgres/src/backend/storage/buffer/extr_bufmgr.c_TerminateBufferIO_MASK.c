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
 int BM_CHECKPOINT_NEEDED ; 
 int BM_DIRTY ; 
 int BM_IO_ERROR ; 
 int BM_IO_IN_PROGRESS ; 
 int BM_JUST_DIRTIED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * InProgressBuf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(BufferDesc *buf, bool clear_dirty, uint32 set_flag_bits)
{
	uint32		buf_state;

	FUNC0(buf == InProgressBuf);

	buf_state = FUNC3(buf);

	FUNC0(buf_state & BM_IO_IN_PROGRESS);

	buf_state &= ~(BM_IO_IN_PROGRESS | BM_IO_ERROR);
	if (clear_dirty && !(buf_state & BM_JUST_DIRTIED))
		buf_state &= ~(BM_DIRTY | BM_CHECKPOINT_NEEDED);

	buf_state |= set_flag_bits;
	FUNC4(buf, buf_state);

	InProgressBuf = NULL;

	FUNC2(FUNC1(buf));
}