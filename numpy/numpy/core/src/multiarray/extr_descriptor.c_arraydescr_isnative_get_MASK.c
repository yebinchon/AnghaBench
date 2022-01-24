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
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_True ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC2(PyArray_Descr *self)
{
    PyObject *ret;
    int retval;
    retval = FUNC1(self);
    if (retval == -1) {
        return NULL;
    }
    ret = retval ? Py_True : Py_False;
    FUNC0(ret);
    return ret;
}