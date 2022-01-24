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
struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; int /*<<< orphan*/ * script; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum obs_frontend_event { ____Placeholder_obs_frontend_event } obs_frontend_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (int,void*),int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (int,void*),struct lua_obs_callback*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(enum obs_frontend_event event, void *priv)
{
	struct lua_obs_callback *cb = priv;
	lua_State *script = cb->script;

	if (cb->base.removed) {
		FUNC3(frontend_event_callback, cb);
		return;
	}

	FUNC1();

	FUNC2(script, (int)event);
	FUNC0(frontend_event_callback, 1, 0);

	FUNC4();
}