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
 char DIRSEP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 (char*,char const) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static inline int FUNC5(char *dir) {
	int ret = 1;
	const char slash = DIRSEP;
	char *path = dir;
	char *ptr = path;
	if (*ptr == slash) {
		ptr++;
	}
#if __SDB_WINDOWS__
	char *p = strstr (ptr, ":\\");
	if (p) {
		ptr = p + 2;
	}
#endif
	while ((ptr = FUNC3 (ptr, slash))) {
		*ptr = 0;
		if (!FUNC1 (path) && FUNC2 ()) {
			FUNC0 ("r_sys_mkdirp: fail '%s' of '%s'\n", path, dir);
			*ptr = slash;
			return 0;
		}
		*ptr = slash;
		ptr++;
	}
	return ret;
}