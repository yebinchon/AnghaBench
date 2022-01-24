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
struct lua_obs_callback {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct lua_obs_callback* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  defer_add_tick ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int /*<<< orphan*/  is_function ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(lua_State *script)
{
	if (!FUNC2(script, is_function))
		return 0;

	struct lua_obs_callback *cb = FUNC0(script, 1);
	FUNC1(defer_add_tick, cb);
	return 0;
}