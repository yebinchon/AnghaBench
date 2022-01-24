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
 struct python_obs_callback* FUNC2 (struct obs_python_script*,int /*<<< orphan*/ *) ; 
 struct obs_python_script* cur_python_script ; 
 int /*<<< orphan*/  modified_callback ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct python_obs_callback*) ; 
 int obs_property_t ; 
 int p ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static PyObject *FUNC7(PyObject *self, PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_p;
	PyObject *py_cb;
	obs_property_t *p;

	if (!FUNC4(args, "OO", &py_p, &py_cb))
		return FUNC6();
	if (!FUNC5(obs_property_t, py_p, &p))
		return FUNC6();
	if (!py_cb || !FUNC0(py_cb))
		return FUNC6();

	struct python_obs_callback *cb = FUNC2(script, py_cb);
	FUNC3(p, modified_callback, cb);

	FUNC1(self);
	return FUNC6();
}