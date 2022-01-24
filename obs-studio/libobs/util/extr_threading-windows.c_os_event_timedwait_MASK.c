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
typedef  int /*<<< orphan*/  os_event_t ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC1(os_event_t *event, unsigned long milliseconds)
{
	DWORD code;

	if (!event)
		return EINVAL;

	code = FUNC0((HANDLE)event, milliseconds);
	if (code == WAIT_TIMEOUT)
		return ETIMEDOUT;
	else if (code != WAIT_OBJECT_0)
		return EINVAL;

	return 0;
}