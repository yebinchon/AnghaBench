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
typedef  int /*<<< orphan*/  obs_script_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  scripting_loaded ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*,char) ; 

obs_script_t *FUNC6(const char *path, obs_data_t *settings)
{
	obs_script_t *script = NULL;
	const char *ext;

	if (!scripting_loaded)
		return NULL;
	if (!FUNC3(path))
		return NULL;

	ext = FUNC5(path, '.');
	if (!ext)
		return NULL;

#if COMPILE_LUA
	if (strcmp(ext, ".lua") == 0) {
		script = obs_lua_script_create(path, settings);
	} else
#endif
#if COMPILE_PYTHON
		if (strcmp(ext, ".py") == 0) {
		script = obs_python_script_create(path, settings);
	} else
#endif
	{
		FUNC0(LOG_WARNING, "Unsupported/unknown script type: %s", path);
	}

	return script;
}