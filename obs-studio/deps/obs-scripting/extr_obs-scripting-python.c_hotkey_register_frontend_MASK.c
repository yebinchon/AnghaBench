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
struct python_obs_callback {TYPE_1__ base; } ;
struct obs_python_script {int dummy; } ;
typedef  scalar_t__ obs_hotkey_id ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ OBS_INVALID_HOTKEY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct python_obs_callback* FUNC3 (struct obs_python_script*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct obs_python_script* cur_python_script ; 
 int /*<<< orphan*/  hotkey_callback ; 
 scalar_t__ FUNC5 (char const*,char const*,int /*<<< orphan*/ ,struct python_obs_callback*) ; 
 int /*<<< orphan*/  on_remove_hotkey ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const**,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct python_obs_callback*) ; 

__attribute__((used)) static PyObject *FUNC9(PyObject *self, PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	const char *name;
	const char *desc;
	obs_hotkey_id id;
	PyObject *py_cb;

	if (!FUNC6(args, "ssO", &name, &desc, &py_cb))
		return FUNC7();
	if (!py_cb || !FUNC0(py_cb))
		return FUNC7();

	struct python_obs_callback *cb = FUNC3(script, py_cb);
	cb->base.on_remove = on_remove_hotkey;
	id = FUNC5(name, desc, hotkey_callback, cb);
	FUNC4(&cb->base.extra, "id", id);

	if (id == OBS_INVALID_HOTKEY_ID)
		FUNC8(cb);

	FUNC2(self);
	return FUNC1(id);
}