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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

bool
FUNC3(int exit_status, bool include_command_not_found)
{
	if (FUNC2(exit_status))
		return true;
	if (FUNC1(exit_status) &&
		FUNC0(exit_status) > (include_command_not_found ? 125 : 128))
		return true;
	return false;
}