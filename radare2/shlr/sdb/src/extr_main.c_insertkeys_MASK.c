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
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(Sdb *s, const char **args, int nargs, int mode) {
	int must_save = 0;
	if (args && nargs > 0) {
		int i;
		for (i = 0; i < nargs; i++) {
			switch (mode) {
			case '-':
				must_save |= FUNC2 (s, args[i]);
				break;
			case '=':
				if (FUNC3 (args[i], '=')) {
					char *v, *kv = (char *) FUNC4 (args[i]);
					v = FUNC3 (kv, '=');
					if (v) {
						*v++ = 0;
						FUNC1 (s, kv, v);
					}
					FUNC0 (kv);
				}
				break;
			}
		}
	}
	return must_save;
}