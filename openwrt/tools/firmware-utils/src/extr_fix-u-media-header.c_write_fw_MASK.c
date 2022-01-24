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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ofname ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char *data, int len)
{
	FILE *f;
	int ret = EXIT_FAILURE;

	f = FUNC3(ofname, "w");
	if (f == NULL) {
		FUNC0("could not open \"%s\" for writing", ofname);
		goto out;
	}

	errno = 0;
	FUNC4(data, len, 1, f);
	if (errno) {
		FUNC0("unable to write output file");
		goto out_flush;
	}

	ret = EXIT_SUCCESS;

out_flush:
	FUNC2(f);
	FUNC1(f);
	if (ret != EXIT_SUCCESS) {
		FUNC5(ofname);
	}
out:
	return ret;
}