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
typedef  int /*<<< orphan*/  REgg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(REgg *egg, const char *dstvar, const char *str, int j) {
	int rest, off = 0;
	off = FUNC4 (str) + 1;
	rest = (off % 4);
	if (rest) {
		rest = 4 - rest;
	}
	off += rest - 4;
	FUNC2 (egg, "  add pc, %d\n", (off));
	// XXX: does not handle \n and so on.. must use r_util
	// use r_str_escape to handle \n
	// do not forget mem leak
	FUNC2 (egg, ".string \"%s\"\n", str = FUNC3 (str));
	FUNC0 ((char *) str);
	if (rest) {
		FUNC2 (egg, ".fill %d, 1, 0\n", (rest));
	}
	FUNC2 (egg, "  sub r0, pc, %d\n", off + 12);
	{
		char str[32], *p = FUNC1 (egg, str, dstvar, 0);
		// r_egg_printf (egg, "DSTVAR=%s --> %s\n", dstvar, p);
		FUNC2 (egg, "  str r0, [%s]\n", p);
		FUNC0 (p);
	}
}