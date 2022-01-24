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
 int NPY_SUCCEED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_RecursionError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(PyObject *obj, PyArray_Descr **newdescr)
{
    PyObject *dtypedescr;
    int ret;

    /* For arbitrary objects that have a "dtype" attribute */
    dtypedescr = FUNC3(obj, "dtype");
    if (dtypedescr == NULL) {
        /*
         * This can be reached due to recursion limit being hit while fetching
         * the attribute (tested for py3.7). This removes the custom message.
         */
        goto fail;
    }

    if (FUNC5(
            " while trying to convert the given data type from its "
            "`.dtype` attribute.") != 0) {
        FUNC4(dtypedescr);
        return 1;
    }

    ret = FUNC0(dtypedescr, newdescr);

    FUNC4(dtypedescr);
    FUNC6();
    if (ret != NPY_SUCCEED) {
        goto fail;
    }

    return 1;

  fail:
    /* Ignore all but recursion errors, to give ctypes a full try. */
    if (!FUNC2(PyExc_RecursionError)) {
        FUNC1();
        return 0;
    }
    return 1;
}