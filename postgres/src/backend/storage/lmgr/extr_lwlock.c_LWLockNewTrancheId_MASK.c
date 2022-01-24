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

/* Variables and functions */
 scalar_t__ MainLWLockArray ; 
 int /*<<< orphan*/  ShmemLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(void)
{
	int			result;
	int		   *LWLockCounter;

	LWLockCounter = (int *) ((char *) MainLWLockArray - sizeof(int));
	FUNC0(ShmemLock);
	result = (*LWLockCounter)++;
	FUNC1(ShmemLock);

	return result;
}