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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 scalar_t__ FUNC6 (char*,char const*,size_t) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static pid_t FUNC8(int pidfd, const char *key, size_t keylen)
{
	int ret;
	char path[512];
	FILE *f;
	size_t n = 0;
	pid_t result = -1;
	char *line = NULL;

	FUNC5(path, sizeof(path), "/proc/self/fdinfo/%d", pidfd);

	f = FUNC1(path, "re");
	if (!f)
		return -1;

	while (FUNC3(&line, &n, f) != -1) {
		char *numstr;

		if (FUNC6(line, key, keylen))
			continue;

		numstr = FUNC7(line + 4);
		ret = FUNC4(numstr, &result);
		if (ret < 0)
			goto out;

		break;
	}

out:
	FUNC2(line);
	FUNC0(f);
	return result;
}