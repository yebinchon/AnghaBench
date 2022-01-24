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
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(const char *msg, char **s) {
	if (!s) {
		FUNC2 ("%s\n", msg);
	} else if (*s) {
		char *p = FUNC1 (FUNC5 (msg) + FUNC5 (*s) + 1);
		if (p) {
			FUNC3 (p, *s);
			FUNC0 (*s);
			*s = p;
			FUNC3 (p + FUNC5 (p), msg);
		}
	} else {
		*s = FUNC4 (msg);
	}
}