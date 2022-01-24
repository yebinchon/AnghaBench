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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_ERROR ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(void)
{
	DWORD waitRes = FUNC0(memory_mutex, INFINITE);

	if (waitRes == WAIT_FAILED) {
		FUNC1(ACCEL_LOG_ERROR, "Cannot lock mutex");
	}
}