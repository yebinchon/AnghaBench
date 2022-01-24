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
typedef  int /*<<< orphan*/  PGShmemHeader ;
typedef  int IpcMemoryState ;
typedef  int /*<<< orphan*/  IpcMemoryId ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
#define  SHMSTATE_ANALYSIS_FAILURE 132 
#define  SHMSTATE_ATTACHED 131 
#define  SHMSTATE_ENOENT 130 
#define  SHMSTATE_FOREIGN 129 
#define  SHMSTATE_UNATTACHED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(unsigned long id1, unsigned long id2)
{
	PGShmemHeader *memAddress;
	IpcMemoryState state;

	state = FUNC0((IpcMemoryId) id2, NULL, &memAddress);
	if (memAddress && FUNC2(memAddress) < 0)
		FUNC1(LOG, "shmdt(%p) failed: %m", memAddress);
	switch (state)
	{
		case SHMSTATE_ENOENT:
		case SHMSTATE_FOREIGN:
		case SHMSTATE_UNATTACHED:
			return false;
		case SHMSTATE_ANALYSIS_FAILURE:
		case SHMSTATE_ATTACHED:
			return true;
	}
	return true;
}