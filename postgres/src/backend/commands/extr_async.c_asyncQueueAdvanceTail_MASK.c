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
typedef  scalar_t__ BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AsyncCtl ; 
 int /*<<< orphan*/  AsyncQueueLock ; 
 scalar_t__ InvalidPid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ QUEUE_FIRST_LISTENER ; 
 int /*<<< orphan*/  QUEUE_HEAD ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUEUE_TAIL ; 
 int SLRU_PAGES_PER_SEGMENT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int,int) ; 

__attribute__((used)) static void
FUNC10(void)
{
	QueuePosition min;
	int			oldtailpage;
	int			newtailpage;
	int			boundary;

	FUNC1(AsyncQueueLock, LW_EXCLUSIVE);
	min = QUEUE_HEAD;
	for (BackendId i = QUEUE_FIRST_LISTENER; i > 0; i = FUNC5(i))
	{
		FUNC0(FUNC3(i) != InvalidPid);
		min = FUNC6(min, FUNC4(i));
	}
	oldtailpage = FUNC7(QUEUE_TAIL);
	QUEUE_TAIL = min;
	FUNC2(AsyncQueueLock);

	/*
	 * We can truncate something if the global tail advanced across an SLRU
	 * segment boundary.
	 *
	 * XXX it might be better to truncate only once every several segments, to
	 * reduce the number of directory scans.
	 */
	newtailpage = FUNC7(min);
	boundary = newtailpage - (newtailpage % SLRU_PAGES_PER_SEGMENT);
	if (FUNC9(oldtailpage, boundary))
	{
		/*
		 * SimpleLruTruncate() will ask for AsyncCtlLock but will also release
		 * the lock again.
		 */
		FUNC8(AsyncCtl, newtailpage);
	}
}