#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mdfd_vfd; } ;
struct TYPE_5__ {int* md_num_open_segs; TYPE_2__** md_seg_fds; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  TYPE_2__ MdfdVec ;
typedef  size_t ForkNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_DATA_FILE_IMMEDIATE_SYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t) ; 

void
FUNC7(SMgrRelation reln, ForkNumber forknum)
{
	int			segno;

	/*
	 * NOTE: mdnblocks makes sure we have opened all active segments, so that
	 * fsync loop will get them all!
	 */
	FUNC6(reln, forknum);

	segno = reln->md_num_open_segs[forknum];

	while (segno > 0)
	{
		MdfdVec    *v = &reln->md_seg_fds[forknum][segno - 1];

		if (FUNC1(v->mdfd_vfd, WAIT_EVENT_DATA_FILE_IMMEDIATE_SYNC) < 0)
			FUNC3(FUNC2(ERROR),
					(FUNC4(),
					 FUNC5("could not fsync file \"%s\": %m",
							FUNC0(v->mdfd_vfd))));
		segno--;
	}
}