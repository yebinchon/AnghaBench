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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct obs_python_script* cur_python_script ; 
 struct python_obs_callback* FUNC2 (struct obs_python_script*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct python_obs_callback*) ; 

__attribute__((used)) static PyObject *FUNC6(PyObject *self, PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_cb = NULL;

	FUNC1(self);

	if (!FUNC3(args, "O", &py_cb))
		return FUNC4();
	if (!py_cb || !FUNC0(py_cb))
		return FUNC4();

	struct python_obs_callback *cb =
		FUNC2(script, py_cb);
	if (cb)
		FUNC5(cb);
	return FUNC4();
}