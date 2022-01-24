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
 int FUNC3 (int) ; 

bool
FUNC4(int exit_status, int signum)
{
	if (FUNC2(exit_status) && FUNC3(exit_status) == signum)
		return true;
	if (FUNC1(exit_status) && FUNC0(exit_status) == 128 + signum)
		return true;
	return false;
}