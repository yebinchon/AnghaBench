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
 int LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 

__attribute__((used)) static inline void FUNC7(lua_State *script, int idx,
					    const char *name, int *p_reg_idx,
					    const char *func)
{
	*p_reg_idx = LUA_REFNIL;

	FUNC5(script, name);
	FUNC1(script, idx - 1);
	if (!FUNC2(script, -1)) {
		if (!FUNC3(script, -1)) {
			FUNC6("%s: item '%s' is not a function", func, name);
		}
		FUNC4(script, 1);
	} else {
		*p_reg_idx = FUNC0(script, LUA_REGISTRYINDEX);
	}
}