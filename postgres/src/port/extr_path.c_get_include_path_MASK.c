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
 int /*<<< orphan*/  INCLUDEDIR ; 
 int /*<<< orphan*/  PGBINDIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

void
FUNC1(const char *my_exec_path, char *ret_path)
{
	FUNC0(ret_path, INCLUDEDIR, PGBINDIR, my_exec_path);
}