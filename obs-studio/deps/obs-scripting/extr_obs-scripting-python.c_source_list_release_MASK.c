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
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int obs_source_t ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int source ; 

__attribute__((used)) static PyObject *FUNC7(PyObject *self, PyObject *args)
{
	PyObject *list;
	if (!FUNC4(args, "O", &list))
		return FUNC6();

	Py_ssize_t count = FUNC1(list);
	for (Py_ssize_t i = 0; i < count; i++) {
		PyObject *py_source = FUNC0(list, i);
		obs_source_t *source;

		if (FUNC5(obs_source_t, py_source, &source)) {
			FUNC3(source);
		}
	}

	FUNC2(self);
	return FUNC6();
}