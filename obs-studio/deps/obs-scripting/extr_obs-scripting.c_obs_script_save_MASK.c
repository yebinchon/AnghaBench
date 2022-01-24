#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/ * settings; } ;
typedef  TYPE_1__ obs_script_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ OBS_SCRIPT_LANG_LUA ; 
 scalar_t__ OBS_SCRIPT_LANG_PYTHON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

obs_data_t *FUNC4(obs_script_t *script)
{
	obs_data_t *settings;

	if (!FUNC3(script))
		return NULL;

#if COMPILE_LUA
	if (script->type == OBS_SCRIPT_LANG_LUA) {
		obs_lua_script_save(script);
		goto out;
	}
#endif
#if COMPILE_PYTHON
	if (script->type == OBS_SCRIPT_LANG_PYTHON) {
		obs_python_script_save(script);
		goto out;
	}
#endif

out:
	settings = script->settings;
	FUNC0(settings);
	return settings;
}