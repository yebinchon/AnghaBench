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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(RLang *lang, const char *code, int len) {
	FILE *fd = FUNC5 (".tmp.c", "w");
	if (fd) {
		FUNC2 ("#include <r_core.h>\n\nvoid entry(RCore *core, int argc, const char **argv) {\n", fd);
		FUNC2 (code, fd);
		FUNC2 ("\n}\n", fd);
		FUNC1 (fd);
		FUNC3 (lang, ".tmp.c");
		FUNC4 (".tmp.c");
	} else FUNC0 ("Cannot open .tmp.c\n");
	return true;
}