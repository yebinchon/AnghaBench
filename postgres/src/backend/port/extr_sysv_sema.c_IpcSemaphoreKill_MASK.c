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
union semun {scalar_t__ val; } ;
typedef  int /*<<< orphan*/  IpcSemaphoreId ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union semun) ; 

__attribute__((used)) static void
FUNC2(IpcSemaphoreId semId)
{
	union semun semun;

	semun.val = 0;				/* unused, but keep compiler quiet */

	if (FUNC1(semId, 0, IPC_RMID, semun) < 0)
		FUNC0(LOG, "semctl(%d, 0, IPC_RMID, ...) failed: %m", semId);
}