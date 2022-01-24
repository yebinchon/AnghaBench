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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC13(PyArrayObject *self, PyObject *args)
{
    PyArrayObject *arr;
    PyObject *obj;

    if (FUNC10(args) < 1) {
        FUNC8(PyExc_TypeError,
                        "only accepts 1 argument");
        return NULL;
    }
    obj = FUNC9(args, 0);
    if (obj == NULL) {
        return NULL;
    }
    if (!FUNC0(obj)) {
        FUNC8(PyExc_TypeError,
                        "can only be called with ndarray object");
        return NULL;
    }
    arr = (PyArrayObject *)obj;

    if (FUNC12(self) != FUNC12(arr)) {
        PyArray_Descr *dtype = FUNC2(arr);
        FUNC11(dtype);
        return FUNC6(
                FUNC12(self),
                dtype,
                FUNC5(arr),
                FUNC3(arr),
                FUNC7(arr), FUNC1(arr),
                FUNC4(arr), (PyObject *)self, obj);
    } else {
        /*The type was set in __array_prepare__*/
        FUNC11(arr);
        return (PyObject *)arr;
    }
}