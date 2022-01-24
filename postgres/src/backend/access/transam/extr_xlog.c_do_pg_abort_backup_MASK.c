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
struct TYPE_3__ {scalar_t__ nonExclusiveBackups; scalar_t__ exclusiveBackupState; int forcePageWrites; } ;
struct TYPE_4__ {TYPE_1__ Insert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EXCLUSIVE_BACKUP_NONE ; 
 scalar_t__ SESSION_BACKUP_NONE ; 
 scalar_t__ SESSION_BACKUP_NON_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* XLogCtl ; 
 scalar_t__ sessionBackupState ; 

void
FUNC3(void)
{
	/*
	 * Quick exit if session is not keeping around a non-exclusive backup
	 * already started.
	 */
	if (sessionBackupState == SESSION_BACKUP_NONE)
		return;

	FUNC1();
	FUNC0(XLogCtl->Insert.nonExclusiveBackups > 0);
	FUNC0(sessionBackupState == SESSION_BACKUP_NON_EXCLUSIVE);
	XLogCtl->Insert.nonExclusiveBackups--;

	if (XLogCtl->Insert.exclusiveBackupState == EXCLUSIVE_BACKUP_NONE &&
		XLogCtl->Insert.nonExclusiveBackups == 0)
	{
		XLogCtl->Insert.forcePageWrites = false;
	}
	FUNC2();
}