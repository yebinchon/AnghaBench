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
#define  SQLITE_ATTACH 128 
 int SQLITE_DENY ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(void *autharg, int access_type, const char *arg3, const char *arg4, const char *arg5, const char *arg6)
{
	switch (access_type) {
		case SQLITE_ATTACH:
		{
			if (FUNC0(arg3, ":memory:", sizeof(":memory:")) && *arg3) {
				if (FUNC2(arg3, "file:", 5) == 0) {
					/* starts with "file:" */
					if (!arg3[5]) {
						return SQLITE_DENY;
					}
					if (FUNC1(arg3 + 5)) {
						return SQLITE_DENY;
					}
				}
				if (FUNC1(arg3)) {
					return SQLITE_DENY;
				}
			}
			return SQLITE_OK;
		}

		default:
			/* access allowed */
			return SQLITE_OK;
	}
}