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
 int item ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int obs_sceneitem_t ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static PyObject *FUNC7(PyObject *self, PyObject *args)
{
	PyObject *list;
	if (!FUNC4(args, "O", &list))
		return FUNC6();

	Py_ssize_t count = FUNC1(list);
	for (Py_ssize_t i = 0; i < count; i++) {
		PyObject *py_item = FUNC0(list, i);
		obs_sceneitem_t *item;

		if (FUNC5(obs_sceneitem_t, py_item, &item)) {
			FUNC3(item);
		}
	}

	FUNC2(self);
	return FUNC6();
}