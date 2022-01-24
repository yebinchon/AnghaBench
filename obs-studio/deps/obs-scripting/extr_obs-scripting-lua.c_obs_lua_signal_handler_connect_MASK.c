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
struct TYPE_2__ {int /*<<< orphan*/  extra; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct lua_obs_callback* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int /*<<< orphan*/  defer_connect ; 
 int handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int signal_handler_t ; 

__attribute__((used)) static int FUNC7(lua_State *script)
{
	signal_handler_t *handler;
	const char *signal;

	if (!FUNC5(signal_handler_t, 1, &handler))
		return 0;
	signal = FUNC6(script, 2);
	if (!signal)
		return 0;
	if (!FUNC4(script, 3))
		return 0;

	struct lua_obs_callback *cb = FUNC0(script, 3);
	FUNC1(&cb->base.extra, "handler", handler);
	FUNC2(&cb->base.extra, "signal", signal);
	FUNC3(defer_connect, cb);
	return 0;
}