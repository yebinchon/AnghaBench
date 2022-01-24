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
typedef  int /*<<< orphan*/  ut8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char const*) ; 
 char* FUNC5 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bool FUNC8(const char *file) {
	char *fileExt = FUNC4 ("%s.tmp", file);
	char *buffer = FUNC3 (fileExt, NULL);

	buffer = FUNC5 (buffer, "rdata", "text", false);
	buffer = FUNC5 (buffer, "rodata", "text", false);
	buffer = FUNC5 (buffer, "get_pc_thunk.bx", "__getesp__", true);

	const char *words[] = {".cstring", "size", "___main", "section", "__alloca", "zero", "cfi"};
	size_t i;
	for (i = 0; i < 7; i++) {
		FUNC6 (buffer, words[i]);
	}

	FUNC1 (fileExt);
	fileExt = FUNC4 ("%s.s", file);
	if (!FUNC2 (fileExt, (const ut8*) buffer, FUNC7 (buffer), true)) {
		FUNC0 ("Error while opening %s.s\n", file);
		goto fail;
	}

	FUNC1 (buffer);
	FUNC1 (fileExt);
	return true;

fail:
	FUNC1 (buffer);
	FUNC1 (fileExt);
	return false;
}