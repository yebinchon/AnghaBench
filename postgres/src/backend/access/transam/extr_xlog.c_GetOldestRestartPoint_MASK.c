#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TimeLineID ;
struct TYPE_3__ {int /*<<< orphan*/  ThisTimeLineID; int /*<<< orphan*/  redo; } ;
struct TYPE_4__ {TYPE_1__ checkPointCopy; } ;

/* Variables and functions */
 TYPE_2__* ControlFile ; 
 int /*<<< orphan*/  ControlFileLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 

void
FUNC2(XLogRecPtr *oldrecptr, TimeLineID *oldtli)
{
	FUNC0(ControlFileLock, LW_SHARED);
	*oldrecptr = ControlFile->checkPointCopy.redo;
	*oldtli = ControlFile->checkPointCopy.ThisTimeLineID;
	FUNC1(ControlFileLock);
}