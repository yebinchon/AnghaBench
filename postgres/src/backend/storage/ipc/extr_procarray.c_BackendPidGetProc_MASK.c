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
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ProcArrayLock ; 

PGPROC *
FUNC3(int pid)
{
	PGPROC	   *result;

	if (pid == 0)				/* never match dummy PGPROCs */
		return NULL;

	FUNC1(ProcArrayLock, LW_SHARED);

	result = FUNC0(pid);

	FUNC2(ProcArrayLock);

	return result;
}