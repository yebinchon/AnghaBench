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
 int /*<<< orphan*/  FUNC0 (char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void *opaque, const char *msg) {
	FUNC0 (msg, opaque);
	char **p = (char **)opaque;
	if (p && *p) {
		int n = FUNC4(*p);
		char *ptr = FUNC2 (n + 2);
		if (!ptr) {
			return;
		}
		FUNC3 (ptr, *p);
		ptr[n] = '\n';
		ptr[n + 1] = 0;
		FUNC1 (*p);
		*p = ptr;
	}
}