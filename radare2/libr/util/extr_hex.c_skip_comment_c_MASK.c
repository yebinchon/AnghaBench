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
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 char* FUNC3 (char const*,char*) ; 

const char *FUNC4(const char *code) {
	if (!FUNC2 (code, "/*", 2)) {
		char *end = FUNC3 (code, "*/");
		if (end) {
			code = end + 2;
		} else {
			FUNC0 ("Missing closing comment\n");
		}
	} else if (!FUNC2 (code, "//", 2)) {
		char *end = FUNC1 (code, '\n');
		if (end) {
			code = end + 2;
		}
	}
	return code;
}