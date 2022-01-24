#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mdfd_vfd; int /*<<< orphan*/  mdfd_segno; } ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_8__ {TYPE_1__ smgr_rnode; } ;
typedef  TYPE_2__* SMgrRelation ;
typedef  TYPE_3__ MdfdVec ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  FileTag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYNC_REQUEST ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  WAIT_EVENT_DATA_FILE_SYNC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static void
FUNC10(SMgrRelation reln, ForkNumber forknum, MdfdVec *seg)
{
	FileTag		tag;

	FUNC3(tag, reln->smgr_rnode.node, forknum, seg->mdfd_segno);

	/* Temp relations should never be fsync'd */
	FUNC0(!FUNC5(reln));

	if (!FUNC4(&tag, SYNC_REQUEST, false /* retryOnError */ ))
	{
		FUNC7(DEBUG1,
				(FUNC9("could not forward fsync request because request queue is full")));

		if (FUNC2(seg->mdfd_vfd, WAIT_EVENT_DATA_FILE_SYNC) < 0)
			FUNC7(FUNC6(ERROR),
					(FUNC8(),
					 FUNC9("could not fsync file \"%s\": %m",
							FUNC1(seg->mdfd_vfd))));
	}
}