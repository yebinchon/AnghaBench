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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  core_pattern_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *core_pattern)
{
	size_t len = FUNC5(core_pattern), ret;
	FILE *f;

	f = FUNC2(core_pattern_file, "w");
	FUNC0(!f, "Try with root privileges");

	ret = FUNC3(core_pattern, 1, len, f);
	FUNC1(f);
	if (ret != len) {
		FUNC4("Error writing to core_pattern file");
		return TEST_FAIL;
	}

	return TEST_PASS;
}