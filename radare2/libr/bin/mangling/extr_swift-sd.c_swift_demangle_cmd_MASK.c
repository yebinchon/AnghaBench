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
 int have_swift_demangle ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char const*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static char *FUNC7(const char *s) {
	/* XXX: command injection issue here */
	static char *swift_demangle = NULL;
	if (have_swift_demangle == -1) {
		if (!swift_demangle) {
			have_swift_demangle = 0;
			swift_demangle = FUNC1 ("swift-demangle");
			if (!swift_demangle || !FUNC5 (swift_demangle, "swift-demangle")) {
				char *xcrun = FUNC1 ("xcrun");
				if (xcrun) {
					if (FUNC5 (xcrun, "xcrun")) {
						FUNC0 (swift_demangle);
						swift_demangle = FUNC2 ("%s swift-demangle", xcrun);
						have_swift_demangle = 1;
					}
					FUNC0 (xcrun);
				}
			}
		}
	}
	if (swift_demangle) {
		if (FUNC6 (s, "'") || FUNC6 (s, "\\")) {
			/* nice try */
			return NULL;
		}
		//char *res = r_sys_cmd_strf ("%s -compact -simplified '%s'",
		char *res = FUNC4 ("%s -compact '%s'",
			swift_demangle, s);
		if (res && !*res) {
			FUNC0 (res);
			res = NULL;
		}
		FUNC3 (res);
		return res;
	}
	return NULL;
}