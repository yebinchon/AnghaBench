#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ml_name; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyMethodDef ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(PyObject *module, PyMethodDef *method_list)
{
	PyObject *dict = FUNC2(module);
	PyObject *name = FUNC3(module);
	if (!dict || !name) {
		return;
	}
	for (PyMethodDef *ml = method_list; ml->ml_name != NULL; ml++) {
		PyObject *func = FUNC0(ml, module, name);
		if (!func) {
			continue;
		}
		FUNC1(dict, ml->ml_name, func);
		FUNC4(func);
	}
	FUNC4(name);
}