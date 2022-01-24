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
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(PyObject *field1, PyObject *field2, NPY_CASTING casting)
{
    Py_ssize_t ppos;
    PyObject *key;
    PyObject *tuple1, *tuple2;

    if (field1 == field2) {
        return 1;
    }
    if (field1 == NULL || field2 == NULL) {
        return 0;
    }
    if (FUNC3(field1) != FUNC3(field2)) {
        return 0;
    }

    /* Iterate over all the fields and compare for castability */
    ppos = 0;
    while (FUNC2(field1, &ppos, &key, &tuple1)) {
        if ((tuple2 = FUNC1(field2, key)) == NULL) {
            return 0;
        }
        /* Compare the dtype of the field for castability */
        if (!FUNC0(
                        (PyArray_Descr *)FUNC4(tuple1, 0),
                        (PyArray_Descr *)FUNC4(tuple2, 0),
                        casting)) {
            return 0;
        }
    }

    return 1;
}