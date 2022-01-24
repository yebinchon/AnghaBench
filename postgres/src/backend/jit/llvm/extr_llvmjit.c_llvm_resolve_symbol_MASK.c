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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**,char**) ; 
 scalar_t__ FUNC4 (char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static uint64_t
FUNC6(const char *symname, void *ctx)
{
	uintptr_t	addr;
	char	   *funcname;
	char	   *modname;

	/*
	 * macOS prefixes all object level symbols with an underscore. But neither
	 * dlsym() nor PG's inliner expect that. So undo.
	 */
#if defined(__darwin__)
	if (symname[0] != '_')
		elog(ERROR, "expected prefixed symbol name, but got \"%s\"", symname);
	symname++;
#endif

	FUNC3(symname, &modname, &funcname);

	/* functions that aren't resolved to names shouldn't ever get here */
	FUNC0(funcname);

	if (modname)
		addr = (uintptr_t) FUNC4(modname, funcname,
												  true, NULL);
	else
		addr = (uintptr_t) FUNC1(symname);

	FUNC5(funcname);
	if (modname)
		FUNC5(modname);

	/* let LLVM will error out - should never happen */
	if (!addr)
		FUNC2(WARNING, "failed to resolve name %s", symname);

	return (uint64_t) addr;
}