#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct obs_python_script {int /*<<< orphan*/  save; } ;
struct TYPE_3__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  loaded; } ;
typedef  TYPE_1__ obs_script_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct obs_python_script* cur_python_script ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  obs_data_t ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  python_loaded ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(obs_script_t *s)
{
	struct obs_python_script *data = (struct obs_python_script *)s;

	if (!s->loaded || !python_loaded)
		return;
	if (!data->save)
		return;

	FUNC4();
	cur_python_script = data;

	PyObject *py_settings;
	if (FUNC3(obs_data_t, s->settings, false, &py_settings)) {
		PyObject *args = FUNC1("(O)", py_settings);
		PyObject *ret = FUNC0(data->save, args);
		FUNC5();
		FUNC2(ret);
		FUNC2(args);
		FUNC2(py_settings);
	}

	cur_python_script = NULL;
	FUNC6();
}