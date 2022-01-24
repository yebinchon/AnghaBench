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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(const char *filename)
{
	if (*filename && FUNC3(filename, ":memory:", sizeof(":memory:"))) {
		char *fullpath = FUNC2(filename, NULL);

		if (!fullpath) {
			return NULL;
		}

		if (FUNC4(fullpath)) {
			FUNC0(fullpath);
			return NULL;
		}
		return fullpath;
	}
	return FUNC1(filename);
}