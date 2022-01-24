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
struct obs_lua_script {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 struct obs_lua_script* current_lua_script ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC6(lua_State *script, int reg_idx, int args,
			      int rets, const char *func,
			      const char *display_name)
{
	if (reg_idx == LUA_REFNIL)
		return false;

	struct obs_lua_script *data = current_lua_script;

	FUNC3(script, LUA_REGISTRYINDEX, reg_idx);
	FUNC0(script, -1 - args);

	if (FUNC1(script, args, rets, 0) != 0) {
		FUNC5(&data->base, "Failed to call %s for %s: %s", func,
			    display_name, FUNC4(script, -1));
		FUNC2(script, 1);
		return false;
	}

	return true;
}