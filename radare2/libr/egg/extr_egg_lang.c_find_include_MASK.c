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
 char const* R_EGG_INCDIR_ENV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char*,char const*,...) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(const char *prefix, const char *file) {
	char *pfx = NULL, *ret = NULL, *env = FUNC3 (R_EGG_INCDIR_ENV);
	if (!prefix) {
		prefix = "";
	}
	if (*prefix == '$') {
		char *out = FUNC3 (prefix + 1);
		pfx = out? out: FUNC5 ("");
	} else {
		pfx = FUNC5 (prefix);
		if (!pfx) {
			FUNC0 (env);
			return NULL;
		}
	}

	if (env) {
		char *str, *ptr = FUNC4 (env, ':');
		// eprintf ("MUST FIND IN PATH (%s)\n", env);
		str = env;
		while (str) {
			if (ptr) {
				*ptr = 0;
			}
			FUNC0 (ret);
			ret = FUNC2 (NULL, "%s/%s", pfx, file);
			{
				char *filepath = FUNC2 (NULL, "%s/%s/%s", str, pfx, file);
				// eprintf ("try (%s)\n", filepath);
				if (FUNC1 (filepath)) {
					FUNC0 (env);
					FUNC0 (pfx);
					FUNC0 (ret);
					return filepath;
				}
				FUNC0 (filepath);
			}
			if (!ptr) {
				break;
			}
			str = ptr + 1;
			ptr = FUNC4 (str, ':');
		}
		FUNC0 (env);
	} else {
		ret = FUNC2 (NULL, "%s/%s", pfx, file);
	}
	FUNC0 (pfx);
	return ret;
}