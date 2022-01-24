#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct obs_lua_script {scalar_t__ first_callback; } ;
struct TYPE_2__ {scalar_t__ next; } ;
struct lua_obs_callback {TYPE_1__ base; int /*<<< orphan*/  reg_idx; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 struct obs_lua_script* current_lua_script ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct lua_obs_callback *
FUNC3(lua_State *script, struct lua_obs_callback *cb,
			   int stack_idx)
{
	struct obs_lua_script *data = current_lua_script;

	cb = cb ? (struct lua_obs_callback *)cb->base.next
		: (struct lua_obs_callback *)data->first_callback;

	while (cb) {
		FUNC2(script, LUA_REGISTRYINDEX, cb->reg_idx);
		bool match = FUNC1(script, -1, stack_idx);
		FUNC0(script, 1);

		if (match)
			break;

		cb = (struct lua_obs_callback *)cb->base.next;
	}

	return cb;
}