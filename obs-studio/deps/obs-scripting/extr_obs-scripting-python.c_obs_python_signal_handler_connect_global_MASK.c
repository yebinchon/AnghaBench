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
struct TYPE_2__ {int /*<<< orphan*/  extra; } ;
struct python_obs_callback {TYPE_1__ base; } ;
struct obs_python_script {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_RuntimeError ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct python_obs_callback* FUNC3 (struct obs_python_script*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  calldata_signal_callback_global ; 
 struct obs_python_script* cur_python_script ; 
 int handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct python_obs_callback*) ; 
 int signal_handler_t ; 

__attribute__((used)) static PyObject *FUNC9(PyObject *self,
							  PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_sh = NULL;
	PyObject *py_cb = NULL;

	if (!script) {
		FUNC0(PyExc_RuntimeError,
				"No active script, report this to Jim");
		return NULL;
	}

	FUNC2(self);

	signal_handler_t *handler;

	if (!FUNC5(args, "OO", &py_sh, &py_cb))
		return FUNC7();

	if (!FUNC6(signal_handler_t, py_sh, &handler))
		return FUNC7();
	if (!py_cb || !FUNC1(py_cb))
		return FUNC7();

	struct python_obs_callback *cb = FUNC3(script, py_cb);
	FUNC4(&cb->base.extra, "handler", handler);
	FUNC8(handler, calldata_signal_callback_global,
				      cb);
	return FUNC7();
}