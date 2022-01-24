#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogSegNo ;
typedef  int /*<<< orphan*/  TimeLineID ;
struct TYPE_2__ {scalar_t__ lastRemovedSegNo; int /*<<< orphan*/  info_lck; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* XLogCtl ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  wal_segment_size ; 

void
FUNC6(XLogSegNo segno, TimeLineID tli)
{
	int			save_errno = errno;
	XLogSegNo	lastRemovedSegNo;

	FUNC0(&XLogCtl->info_lck);
	lastRemovedSegNo = XLogCtl->lastRemovedSegNo;
	FUNC1(&XLogCtl->info_lck);

	if (segno <= lastRemovedSegNo)
	{
		char		filename[MAXFNAMELEN];

		FUNC2(filename, tli, segno, wal_segment_size);
		errno = save_errno;
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("requested WAL segment %s has already been removed",
						filename)));
	}
	errno = save_errno;
}