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
struct obs_lua_script {int /*<<< orphan*/  first_callback; } ;
struct lua_obs_callback {int /*<<< orphan*/ * script; int /*<<< orphan*/  reg_idx; } ;
typedef  int /*<<< orphan*/  obs_script_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 struct lua_obs_callback* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct obs_lua_script* current_lua_script ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline struct lua_obs_callback *
FUNC3(lua_State *script, int stack_idx, size_t extra_size)
{
	struct obs_lua_script *data = current_lua_script;
	struct lua_obs_callback *cb =
		FUNC0(&data->first_callback, (obs_script_t *)data,
				    sizeof(*cb) + extra_size);

	FUNC2(script, stack_idx);
	cb->reg_idx = FUNC1(script, LUA_REGISTRYINDEX);
	cb->script = script;
	return cb;
}