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
struct TYPE_2__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  file; int /*<<< orphan*/  path; int /*<<< orphan*/  type; } ;
struct obs_lua_script {TYPE_1__ base; int /*<<< orphan*/  dir; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tick; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  obs_script_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REFNIL ; 
 int /*<<< orphan*/  OBS_SCRIPT_LANG_LUA ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct obs_lua_script*) ; 
 struct obs_lua_script* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*,char) ; 

obs_script_t *FUNC12(const char *path, obs_data_t *settings)
{
	struct obs_lua_script *data = FUNC1(sizeof(*data));

	data->base.type = OBS_SCRIPT_LANG_LUA;
	data->tick = LUA_REFNIL;

	pthread_mutexattr_t attr;
	FUNC9(&attr);
	FUNC8(&data->mutex);
	FUNC10(&attr, PTHREAD_MUTEX_RECURSIVE);

	if (FUNC7(&data->mutex, &attr) != 0) {
		FUNC0(data);
		return NULL;
	}

	FUNC2(&data->base.path, path);

	char *slash = path && *path ? FUNC11(path, '/') : NULL;
	if (slash) {
		slash++;
		FUNC2(&data->base.file, slash);
		FUNC3(&data->dir, &data->base.path, slash - path);
	} else {
		FUNC2(&data->base.file, path);
	}

	data->base.settings = FUNC5();
	if (settings)
		FUNC4(data->base.settings, settings);

	FUNC6((obs_script_t *)data);
	return (obs_script_t *)data;
}