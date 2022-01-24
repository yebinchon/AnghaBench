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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  calldata_signal_callback ; 
 struct obs_python_script* cur_python_script ; 
 int handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int /*<<< orphan*/ ,struct python_obs_callback*) ; 
 int signal_handler_t ; 

__attribute__((used)) static PyObject *FUNC10(PyObject *self,
						   PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_sh = NULL;
	PyObject *py_cb = NULL;
	const char *signal;

	if (!script) {
		FUNC0(PyExc_RuntimeError,
				"No active script, report this to Jim");
		return NULL;
	}

	FUNC2(self);

	signal_handler_t *handler;

	if (!FUNC6(args, "OsO", &py_sh, &signal, &py_cb))
		return FUNC8();
	if (!FUNC7(signal_handler_t, py_sh, &handler))
		return FUNC8();
	if (!py_cb || !FUNC1(py_cb))
		return FUNC8();

	struct python_obs_callback *cb = FUNC3(script, py_cb);
	FUNC4(&cb->base.extra, "handler", handler);
	FUNC5(&cb->base.extra, "signal", signal);
	FUNC9(handler, signal, calldata_signal_callback, cb);
	return FUNC8();
}