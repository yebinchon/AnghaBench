#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* print; } ;
struct TYPE_4__ {int /*<<< orphan*/  formats; } ;
typedef  int /*<<< orphan*/  RLineCompletion ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char*,char*,char const*) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC9 (RCore *core, RLineCompletion *completion, char *key, char *pfx, int idx, char *ptr) {
	int i, ret = 0;
	int len = FUNC7 (ptr);
	char* fmt = FUNC5 (core->print->formats, key, NULL);
	if (fmt) {
		int nargs = FUNC4 (fmt);
		if (nargs > 1) {
			for (i = 1; i < nargs; i++) {
				const char *arg = FUNC3 (fmt, i);
				char *p = FUNC6 (arg, '(');
				char *p2 = FUNC6 (arg, ')');
				// remove '(' and ')' from fmt
				if (p && p2) {
					arg = p + 1;
					*p2 = '\0';
				}
				if (!len || !FUNC8 (ptr, arg, len)) {
					char *s = FUNC2 ("pf%s.%s.%s", pfx, key, arg);
					FUNC1 (completion, s);
					FUNC0 (s);
				}
			}
		}
	}
	FUNC0 (fmt);
	return ret;
}