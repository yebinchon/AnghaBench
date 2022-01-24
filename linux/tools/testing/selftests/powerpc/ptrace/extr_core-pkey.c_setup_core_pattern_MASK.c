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
 int /*<<< orphan*/  PATH_MAX ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  core_pattern_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(char **core_pattern_, bool *changed_)
{
	FILE *f;
	char *core_pattern;
	int ret;

	core_pattern = FUNC4(PATH_MAX);
	if (!core_pattern) {
		FUNC5("Error allocating memory");
		return TEST_FAIL;
	}

	f = FUNC1(core_pattern_file, "r");
	if (!f) {
		FUNC5("Error opening core_pattern file");
		ret = TEST_FAIL;
		goto out;
	}

	ret = FUNC2(core_pattern, 1, PATH_MAX, f);
	FUNC0(f);
	if (!ret) {
		FUNC5("Error reading core_pattern file");
		ret = TEST_FAIL;
		goto out;
	}

	/* Check whether we can predict the name of the core file. */
	if (!FUNC6(core_pattern, "core") || !FUNC6(core_pattern, "core.%p"))
		*changed_ = false;
	else {
		ret = FUNC7("core-pkey.%p");
		if (ret)
			goto out;

		*changed_ = true;
	}

	*core_pattern_ = core_pattern;
	ret = TEST_PASS;

 out:
	if (ret)
		FUNC3(core_pattern);

	return ret;
}