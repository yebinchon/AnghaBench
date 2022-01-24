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
typedef  int /*<<< orphan*/  QueuePosition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AsyncQueueEntryEmptySize ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int QUEUE_MAX_PAGE ; 
 int QUEUE_PAGESIZE ; 
 int FUNC2 (int /*<<< orphan*/  volatile) ; 
 int FUNC3 (int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  volatile,int,int) ; 

__attribute__((used)) static bool
FUNC5(volatile QueuePosition *position, int entryLength)
{
	int			pageno = FUNC3(*position);
	int			offset = FUNC2(*position);
	bool		pageJump = false;

	/*
	 * Move to the next writing position: First jump over what we have just
	 * written or read.
	 */
	offset += entryLength;
	FUNC0(offset <= QUEUE_PAGESIZE);

	/*
	 * In a second step check if another entry can possibly be written to the
	 * page. If so, stay here, we have reached the next position. If not, then
	 * we need to move on to the next page.
	 */
	if (offset + FUNC1(AsyncQueueEntryEmptySize) > QUEUE_PAGESIZE)
	{
		pageno++;
		if (pageno > QUEUE_MAX_PAGE)
			pageno = 0;			/* wrap around */
		offset = 0;
		pageJump = true;
	}

	FUNC4(*position, pageno, offset);
	return pageJump;
}