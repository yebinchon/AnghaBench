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
typedef  int /*<<< orphan*/  XLogSegNo ;
struct TYPE_2__ {int /*<<< orphan*/  info_lck; int /*<<< orphan*/  lastRemovedSegNo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* XLogCtl ; 

XLogSegNo
FUNC2(void)
{
	XLogSegNo	lastRemovedSegNo;

	FUNC0(&XLogCtl->info_lck);
	lastRemovedSegNo = XLogCtl->lastRemovedSegNo;
	FUNC1(&XLogCtl->info_lck);

	return lastRemovedSegNo;
}