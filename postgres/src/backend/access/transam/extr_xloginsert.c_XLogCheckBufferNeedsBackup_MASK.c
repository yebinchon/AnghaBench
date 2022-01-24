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
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

bool
FUNC3(Buffer buffer)
{
	XLogRecPtr	RedoRecPtr;
	bool		doPageWrites;
	Page		page;

	FUNC1(&RedoRecPtr, &doPageWrites);

	page = FUNC0(buffer);

	if (doPageWrites && FUNC2(page) <= RedoRecPtr)
		return true;			/* buffer requires backup */

	return false;				/* buffer does not need to be backed up */
}