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
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 char** limit_extensions ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC3(char *path) /* {{{ */
{
	char **p;
	size_t path_len;

	if (!path || !limit_extensions) {
		return 0; /* allowed by default */
	}

	p = limit_extensions;
	path_len = FUNC1(path);
	while (p && *p) {
		size_t ext_len = FUNC1(*p);
		if (path_len > ext_len) {
			char *path_ext = path + path_len - ext_len;
			if (FUNC0(*p, path_ext) == 0) {
				return 0; /* allow as the extension has been found */
			}
		}
		p++;
	}


	FUNC2(ZLOG_NOTICE, "Access to the script '%s' has been denied (see security.limit_extensions)", path);
	return 1; /* extension not found: not allowed  */
}