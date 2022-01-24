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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  local_preload_libraries_string ; 
 int /*<<< orphan*/  session_preload_libraries_string ; 

void
FUNC1(void)
{
	FUNC0(session_preload_libraries_string,
				   "session_preload_libraries",
				   false);
	FUNC0(local_preload_libraries_string,
				   "local_preload_libraries",
				   true);
}