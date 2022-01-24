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
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_NOTYPE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(int rtype, PyArrayObject *out)
{
    PyObject *kwds = NULL;
    if (rtype != NPY_NOTYPE || out != NULL) {
        kwds = FUNC1();
        if (rtype != NPY_NOTYPE) {
            PyArray_Descr *descr;
            descr = FUNC0(rtype);
            if (descr) {
                FUNC2(kwds, "dtype", (PyObject *)descr);
                FUNC3(descr);
            }
        }
        if (out != NULL) {
            FUNC2(kwds, "out", (PyObject *)out);
        }
    }
    return kwds;
}