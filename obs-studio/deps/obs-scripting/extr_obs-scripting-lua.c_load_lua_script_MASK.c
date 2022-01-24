#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  array; } ;
struct TYPE_6__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  desc; TYPE_2__ path; } ;
struct TYPE_4__ {int /*<<< orphan*/  array; } ;
struct obs_lua_script {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * script; TYPE_3__ base; void* save; void* update; void* get_properties; void* tick; struct obs_lua_script* next_tick; struct obs_lua_script** p_prev_next_tick; TYPE_1__ dir; } ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_MULTRET ; 
 void* LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct obs_lua_script* current_lua_script ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct obs_lua_script* first_tick_script ; 
 int /*<<< orphan*/  get_script_path_func ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 char* FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  obs_data_t ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  startup_script ; 
 int /*<<< orphan*/  tick_mutex ; 

__attribute__((used)) static bool FUNC25(struct obs_lua_script *data)
{
	struct dstr str = {0};
	bool success = false;
	int ret;

	lua_State *script = FUNC9();
	if (!script) {
		FUNC24(&data->base, "Failed to create new lua state");
		goto fail;
	}

	FUNC22(&data->mutex);

	FUNC10(script);
	FUNC21(script);

	if (FUNC7(script, startup_script) != 0) {
		FUNC24(&data->base, "Error executing startup script 1: %s",
			    FUNC20(script, -1));
		goto fail;
	}

	FUNC5(&str, get_script_path_func, data->dir.array);
	ret = FUNC7(script, str.array);
	FUNC4(&str);

	if (ret != 0) {
		FUNC24(&data->base, "Error executing startup script 2: %s",
			    FUNC20(script, -1));
		goto fail;
	}

	current_lua_script = data;

	FUNC2(script);
	FUNC0(script);
#if UI_ENABLED
	add_lua_frontend_funcs(script);
#endif

	if (FUNC8(script, data->base.path.array) != 0) {
		FUNC24(&data->base, "Error loading file: %s",
			    FUNC20(script, -1));
		goto fail;
	}

	if (FUNC17(script, 0, LUA_MULTRET, 0) != 0) {
		FUNC24(&data->base, "Error running file: %s",
			    FUNC20(script, -1));
		goto fail;
	}

	ret = FUNC14(script);
	if (ret == 1 && FUNC15(script, -1)) {
		bool success = FUNC19(script, -1);

		if (!success) {
			goto fail;
		}
	}

	FUNC13(script, "script_tick");
	if (FUNC16(script, -1)) {
		FUNC22(&tick_mutex);

		struct obs_lua_script *next = first_tick_script;
		data->next_tick = next;
		data->p_prev_next_tick = &first_tick_script;
		if (next)
			next->p_prev_next_tick = &data->next_tick;
		first_tick_script = data;

		data->tick = FUNC11(script, LUA_REGISTRYINDEX);

		FUNC23(&tick_mutex);
	}

	FUNC13(script, "script_properties");
	if (FUNC16(script, -1))
		data->get_properties = FUNC11(script, LUA_REGISTRYINDEX);
	else
		data->get_properties = LUA_REFNIL;

	FUNC13(script, "script_update");
	if (FUNC16(script, -1))
		data->update = FUNC11(script, LUA_REGISTRYINDEX);
	else
		data->update = LUA_REFNIL;

	FUNC13(script, "script_save");
	if (FUNC16(script, -1))
		data->save = FUNC11(script, LUA_REGISTRYINDEX);
	else
		data->save = LUA_REFNIL;

	FUNC13(script, "script_defaults");
	if (FUNC16(script, -1)) {
		FUNC6(obs_data_t, data->base.settings, false);
		if (FUNC17(script, 1, 0, 0) != 0) {
			FUNC24(&data->base,
				    "Error calling "
				    "script_defaults: %s",
				    FUNC20(script, -1));
		}
	}

	FUNC13(script, "script_description");
	if (FUNC16(script, -1)) {
		if (FUNC17(script, 0, 1, 0) != 0) {
			FUNC24(&data->base,
				    "Error calling "
				    "script_defaults: %s",
				    FUNC20(script, -1));
		} else {
			const char *desc = FUNC20(script, -1);
			FUNC3(&data->base.desc, desc);
		}
	}

	FUNC13(script, "script_load");
	if (FUNC16(script, -1)) {
		FUNC6(obs_data_t, data->base.settings, false);
		if (FUNC17(script, 1, 0, 0) != 0) {
			FUNC24(&data->base,
				    "Error calling "
				    "script_load: %s",
				    FUNC20(script, -1));
		}
	}

	data->script = script;
	success = true;

fail:
	if (script) {
		FUNC18(script, 0);
		FUNC23(&data->mutex);
	}

	if (!success && script) {
		FUNC12(script);
	}

	current_lua_script = NULL;
	return success;
}