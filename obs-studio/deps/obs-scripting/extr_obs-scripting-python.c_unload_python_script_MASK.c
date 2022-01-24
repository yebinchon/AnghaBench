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
struct obs_python_script {int /*<<< orphan*/ * module; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct obs_python_script* cur_python_script ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct obs_python_script *data)
{
	PyObject *py_module = data->module;
	PyObject *py_func = NULL;
	PyObject *py_ret = NULL;

	cur_python_script = data;

	py_func = FUNC3(py_module, "script_unload");
	if (FUNC1() || !py_func) {
		FUNC0();
		goto fail;
	}

	py_ret = FUNC2(py_func, NULL);
	if (FUNC5())
		goto fail;

fail:
	FUNC4(py_ret);
	FUNC4(py_func);

	cur_python_script = NULL;
}