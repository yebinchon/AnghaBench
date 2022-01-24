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
typedef  int /*<<< orphan*/  XLogRecPtr ;

/* Variables and functions */
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int /*<<< orphan*/  XLOG_MARK_UNIMPORTANT ; 
 int /*<<< orphan*/  XLOG_SWITCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

XLogRecPtr
FUNC3(bool mark_unimportant)
{
	XLogRecPtr	RecPtr;

	/* XLOG SWITCH has no data */
	FUNC0();

	if (mark_unimportant)
		FUNC2(XLOG_MARK_UNIMPORTANT);
	RecPtr = FUNC1(RM_XLOG_ID, XLOG_SWITCH);

	return RecPtr;
}