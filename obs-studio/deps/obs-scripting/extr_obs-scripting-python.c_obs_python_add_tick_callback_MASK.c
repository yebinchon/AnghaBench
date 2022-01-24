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
struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct python_obs_callback* FUNC3 (struct obs_python_script*,int /*<<< orphan*/ *) ; 
 struct obs_python_script* cur_python_script ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct python_obs_callback*) ; 
 int /*<<< orphan*/  obs_python_tick_callback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static PyObject *FUNC7(PyObject *self, PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_cb = NULL;

	if (!script) {
		FUNC0(PyExc_RuntimeError,
				"No active script, report this to Jim");
		return NULL;
	}

	FUNC2(self);

	if (!FUNC5(args, "O", &py_cb))
		return FUNC6();
	if (!py_cb || !FUNC1(py_cb))
		return FUNC6();

	struct python_obs_callback *cb = FUNC3(script, py_cb);
	FUNC4(obs_python_tick_callback, cb);
	return FUNC6();
}