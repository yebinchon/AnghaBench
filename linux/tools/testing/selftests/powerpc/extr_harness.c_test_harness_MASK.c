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
 int /*<<< orphan*/  GIT_VERSION ; 
 int MAGIC_SKIP_RETURN_VALUE ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int (*) (),char*) ; 
 int /*<<< orphan*/  sig_action ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(int (test_function)(void), char *name)
{
	int rc;

	FUNC7(name);
	FUNC5(GIT_VERSION);

	if (FUNC2(SIGINT, &sig_action, NULL)) {
		FUNC0("sigaction (sigint)");
		FUNC3(name);
		return 1;
	}

	if (FUNC2(SIGALRM, &sig_action, NULL)) {
		FUNC0("sigaction (sigalrm)");
		FUNC3(name);
		return 1;
	}

	rc = FUNC1(test_function, name);

	if (rc == MAGIC_SKIP_RETURN_VALUE) {
		FUNC6(name);
		/* so that skipped test is not marked as failed */
		rc = 0;
	} else
		FUNC4(name, rc);

	return rc;
}