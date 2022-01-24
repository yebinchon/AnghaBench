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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int /*<<< orphan*/  defer_connect_global ; 
 int handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 
 int signal_handler_t ; 

__attribute__((used)) static int FUNC5(lua_State *script)
{
	signal_handler_t *handler;

	if (!FUNC4(signal_handler_t, 1, &handler))
		return 0;
	if (!FUNC3(script, 2))
		return 0;

	struct lua_obs_callback *cb = FUNC0(script, 2);
	FUNC1(&cb->base.extra, "handler", handler);
	FUNC2(defer_connect_global, cb);
	return 0;
}