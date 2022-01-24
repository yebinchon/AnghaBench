#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  finishedStartup; } ;
struct TYPE_9__ {TYPE_1__* shared; } ;
struct TYPE_8__ {scalar_t__* page_buffer; } ;
typedef  int /*<<< orphan*/  MultiXactOffset ;
typedef  int /*<<< orphan*/  MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* MultiXactMemberCtl ; 
 int /*<<< orphan*/  MultiXactOffsetControlLock ; 
 TYPE_2__* MultiXactOffsetCtl ; 
 TYPE_5__* MultiXactState ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(MultiXactId multi, MultiXactOffset *result)
{
	MultiXactOffset offset;
	int			pageno;
	int			entryno;
	int			slotno;
	MultiXactOffset *offptr;

	FUNC0(MultiXactState->finishedStartup);

	pageno = FUNC3(multi);
	entryno = FUNC2(multi);

	/*
	 * Flush out dirty data, so PhysicalPageExists can work correctly.
	 * SimpleLruFlush() is a pretty big hammer for that.  Alternatively we
	 * could add an in-memory version of page exists, but find_multixact_start
	 * is called infrequently, and it doesn't seem bad to flush buffers to
	 * disk before truncation.
	 */
	FUNC5(MultiXactOffsetCtl, true);
	FUNC5(MultiXactMemberCtl, true);

	if (!FUNC4(MultiXactOffsetCtl, pageno))
		return false;

	/* lock is acquired by SimpleLruReadPage_ReadOnly */
	slotno = FUNC6(MultiXactOffsetCtl, pageno, multi);
	offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
	offptr += entryno;
	offset = *offptr;
	FUNC1(MultiXactOffsetControlLock);

	*result = offset;
	return true;
}