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
typedef  unsigned long long uint64_t ;
struct lua_obs_timer {unsigned long long interval; int /*<<< orphan*/  last_ts; } ;
struct lua_obs_callback {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct lua_obs_callback* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int /*<<< orphan*/  defer_timer_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct lua_obs_timer* FUNC3 (struct lua_obs_callback*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(lua_State *script)
{
	if (!FUNC2(script, 1))
		return 0;
	int ms = (int)FUNC4(script, 2);
	if (!ms)
		return 0;

	struct lua_obs_callback *cb = FUNC0(
		script, 1, sizeof(struct lua_obs_timer));
	struct lua_obs_timer *timer = FUNC3(cb);

	timer->interval = (uint64_t)ms * 1000000ULL;
	timer->last_ts = FUNC5();

	FUNC1(defer_timer_init, cb);
	return 0;
}