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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,char*) ; 

__attribute__((used)) static inline const char *FUNC7(lua_State *script, int idx,
					    const char *name, const char *func)
{
	const char *str = "";

	FUNC4(script, name);
	FUNC1(script, idx - 1);
	if (!FUNC2(script, -1))
		FUNC6("%s: no item '%s' of type %s", func, name, "string");
	else
		str = FUNC0(FUNC5(script, -1));
	FUNC3(script, 1);

	return str;
}