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
 scalar_t__ SEPGSQL_MODE_DEFAULT ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ sepgsql_mode ; 

bool
FUNC1(void)
{
	if (sepgsql_mode == SEPGSQL_MODE_DEFAULT &&
		FUNC0() > 0)
		return true;

	return false;
}