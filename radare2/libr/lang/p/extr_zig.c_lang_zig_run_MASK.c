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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(RLang *lang, const char *code, int len) {
	const char *file = "_tmp.zig";
	FILE *fd = FUNC5 (file, "w");
	if (fd) {
		const char *zig_header = \
"extern fn puts(&const u8) void;\n" \
"extern fn r_core_cmd_str(&u8, &const u8) &u8;\n" \
"extern fn r_core_new() &u8;\n" \
"extern fn r_core_free(&u8) void;\n" \
"\n" \
"export fn entry(core: &u8) void {\n";
		const char *zig_footer = \
"\n}\n" \
"pub fn r2cmd(core: &u8, cmd: u8) &u8 {\n" \
"  return r_core_cmd_str(core, cmd);\n" \
"}\n";
		FUNC2 (zig_header, fd);
		FUNC2 (code, fd);
		FUNC2 (zig_footer, fd);
		FUNC1 (fd);
		FUNC3 (lang, file);
		FUNC4 (file);
	} else {
		FUNC0 ("Cannot open %s\n", file);
	}
	return true;
}