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
 struct obs_python_script* cur_python_script ; 
 struct python_obs_callback* FUNC1 (struct obs_python_script*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct python_obs_callback*) ; 

__attribute__((used)) static PyObject *FUNC5(PyObject *self, PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_cb;

	FUNC0(self);

	if (!FUNC2(args, "O", &py_cb))
		return FUNC3();

	struct python_obs_callback *cb =
		FUNC1(script, py_cb);
	if (cb)
		FUNC4(cb);
	return FUNC3();
}