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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(char *name, char *buf, int buflen)
{
	FILE *f;
	int ret = EXIT_FAILURE;

	f = FUNC2(name, "r");
	if (f == NULL) {
		FUNC0("could not open \"%s\" for reading", name);
		goto out;
	}

	errno = 0;
	FUNC3(buf, buflen, 1, f);
	if (errno != 0) {
		FUNC0("unable to read from file \"%s\"", name);
		goto out_close;
	}

	ret = EXIT_SUCCESS;

out_close:
	FUNC1(f);
out:
	return ret;
}