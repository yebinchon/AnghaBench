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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char** FUNC6 () ; 

__attribute__((used)) static PyObject *FUNC7(PyObject *self, PyObject *args)
{
	char **names = FUNC6();
	char **name = names;

	PyObject *list = FUNC1(0);

	while (name && *name) {
		PyObject *py_name = FUNC2(*name);
		if (py_name) {
			FUNC0(list, py_name);
			FUNC3(py_name);
		}
		name++;
	}

	FUNC4(self);
	FUNC4(args);

	FUNC5(names);
	return list;
}