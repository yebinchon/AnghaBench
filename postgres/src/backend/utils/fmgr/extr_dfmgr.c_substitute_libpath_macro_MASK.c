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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  pkglib_path ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

__attribute__((used)) static char *
FUNC9(const char *name)
{
	const char *sep_ptr;

	FUNC0(name != NULL);

	/* Currently, we only recognize $libdir at the start of the string */
	if (name[0] != '$')
		return FUNC6(name);

	if ((sep_ptr = FUNC4(name)) == NULL)
		sep_ptr = name + FUNC7(name);

	if (FUNC7("$libdir") != sep_ptr - name ||
		FUNC8(name, "$libdir", FUNC7("$libdir")) != 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_NAME),
				 FUNC3("invalid macro name in dynamic library path: %s",
						name)));

	return FUNC5("%s%s", pkglib_path, sep_ptr);
}