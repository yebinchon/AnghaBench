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
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(PyArray_Descr *self)
{
    if (!FUNC1(self)) {
        PyObject *astr = FUNC5(self);
        if (astr == NULL) {
            return -1;
        }
#if defined(NPY_PY3K)
        {
            PyObject *bstr = PyUnicode_AsUnicodeEscapeString(astr);
            Py_DECREF(astr);
            astr = bstr;
        }
#endif
        FUNC2(PyExc_KeyError,
                "There are no fields in dtype %s.", FUNC0(astr));
        FUNC4(astr);
        return -1;
    }
    else {
        return 0;
    }
}