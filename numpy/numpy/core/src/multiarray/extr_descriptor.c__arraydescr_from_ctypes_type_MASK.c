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
typedef  int /*<<< orphan*/  PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  PyArrayDescr_Type ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArray_Descr *
FUNC5(PyTypeObject *type)
{
    PyObject *_numpy_dtype_ctypes;
    PyObject *res;

    /* Call the python function of the same name. */
    _numpy_dtype_ctypes = FUNC1("numpy.core._dtype_ctypes");
    if (_numpy_dtype_ctypes == NULL) {
        return NULL;
    }
    res = FUNC2(_numpy_dtype_ctypes, "dtype_from_ctypes_type", "O", (PyObject *)type);
    FUNC4(_numpy_dtype_ctypes);
    if (res == NULL) {
        return NULL;
    }

    /*
     * sanity check that dtype_from_ctypes_type returned the right type,
     * since getting it wrong would give segfaults.
     */
    if (!FUNC3(res, &PyArrayDescr_Type)) {
        FUNC4(res);
        FUNC0();
        return NULL;
    }

    return (PyArray_Descr *)res;
}