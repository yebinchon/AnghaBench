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
 int FUNC0 () ; 
 char* path ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  test_exec ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(int argc, char *argv[])
{
	path = argv[0];

	if (argc > 1 && FUNC1(argv[1], "--child") == 0)
		return FUNC0();

	return FUNC2(test_exec, "tm_exec");
}