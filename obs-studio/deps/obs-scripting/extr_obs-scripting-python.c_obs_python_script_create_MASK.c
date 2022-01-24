#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* array; } ;
struct TYPE_7__ {scalar_t__ loaded; int /*<<< orphan*/  settings; TYPE_2__ file; TYPE_2__ path; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/  array; } ;
struct obs_python_script {TYPE_1__ base; TYPE_3__ dir; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  obs_script_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_SCRIPT_LANG_PYTHON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct obs_python_script* FUNC1 (int) ; 
 struct obs_python_script* cur_python_script ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct obs_python_script*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  python_loaded ; 
 char* FUNC12 (char const*,char) ; 
 char* FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

obs_script_t *FUNC15(const char *path, obs_data_t *settings)
{
	struct obs_python_script *data = FUNC1(sizeof(*data));

	data->base.type = OBS_SCRIPT_LANG_PYTHON;

	FUNC2(&data->base.path, path);
	FUNC5(&data->base.path, "\\", "/");
	path = data->base.path.array;

	const char *slash = path && *path ? FUNC12(path, '/') : NULL;
	if (slash) {
		slash++;
		FUNC2(&data->base.file, slash);
		FUNC4(&data->dir, &data->base.path, slash - path);
	} else {
		FUNC2(&data->base.file, path);
	}

	path = data->base.file.array;
	FUNC3(&data->name, &data->base.file);

	const char *ext = FUNC13(path, ".py");
	if (ext)
		FUNC6(&data->name, ext - path);

	data->base.settings = FUNC10();
	if (settings)
		FUNC9(data->base.settings, settings);

	if (!python_loaded)
		return (obs_script_t *)data;

	FUNC8();
	FUNC0(data->dir.array);
	data->base.loaded = FUNC7(data);
	if (data->base.loaded) {
		cur_python_script = data;
		FUNC11(&data->base, NULL);
		cur_python_script = NULL;
	}
	FUNC14();

	return (obs_script_t *)data;
}