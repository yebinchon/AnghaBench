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
typedef  int /*<<< orphan*/  RLang ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC7(RLang *lang, const char *code, int len) {
	bool silent = !FUNC6 (code, "-s", 2);
	FILE *fd = FUNC5 (".tmp.vala", "w");
	if (fd) {
		if (silent) {
			code += 2;
		}
		FUNC2 ("using Radare;\n\npublic static void entry(RCore core) {\n", fd);
		FUNC2 (code, fd);
		FUNC2 (";\n}\n", fd);
		FUNC1 (fd);
		FUNC3 (lang, ".tmp.vala", silent);
		FUNC4 (".tmp.vala");
		return true;
	}
	FUNC0 ("Cannot open .tmp.vala\n");
	return false;
}