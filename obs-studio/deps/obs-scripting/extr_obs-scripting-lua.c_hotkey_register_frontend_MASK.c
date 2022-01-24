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
struct TYPE_2__ {int /*<<< orphan*/  extra; int /*<<< orphan*/  on_remove; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
typedef  scalar_t__ obs_hotkey_id ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Integer ;

/* Variables and functions */
 scalar_t__ OBS_INVALID_HOTKEY_ID ; 
 struct lua_obs_callback* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  hotkey_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*,char const*,int /*<<< orphan*/ ,struct lua_obs_callback*) ; 
 int /*<<< orphan*/  on_remove_hotkey ; 
 int /*<<< orphan*/  FUNC6 (struct lua_obs_callback*) ; 

__attribute__((used)) static int FUNC7(lua_State *script)
{
	obs_hotkey_id id;

	const char *name = FUNC4(script, 1);
	if (!name)
		return 0;
	const char *desc = FUNC4(script, 2);
	if (!desc)
		return 0;
	if (!FUNC2(script, 3))
		return 0;

	struct lua_obs_callback *cb = FUNC0(script, 3);
	cb->base.on_remove = on_remove_hotkey;
	id = FUNC5(name, desc, hotkey_callback, cb);
	FUNC1(&cb->base.extra, "id", id);
	FUNC3(script, (lua_Integer)id);

	if (id == OBS_INVALID_HOTKEY_ID)
		FUNC6(cb);
	return 1;
}