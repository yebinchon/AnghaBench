#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_2__ {int nd; int /*<<< orphan*/ * strides; int /*<<< orphan*/ * dimensions; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_ARRAY_C_CONTIGUOUS ; 
 int NPY_ARRAY_F_CONTIGUOUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_MemoryError ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(PyArrayObject *self, PyObject *val)
{
    int nd;
    PyArrayObject *ret;

    if (val == NULL) {
        FUNC6(PyExc_AttributeError,
                "Cannot delete array shape");
        return -1;
    }
    /* Assumes C-order */
    ret = (PyArrayObject *)FUNC3(self, val);
    if (ret == NULL) {
        return -1;
    }
    if (FUNC0(ret) != FUNC0(self)) {
        FUNC7(ret);
        FUNC6(PyExc_AttributeError,
                        "incompatible shape for a non-contiguous "\
                        "array");
        return -1;
    }

    /* Free old dimensions and strides */
    FUNC10(self);
    nd = FUNC2(ret);
    ((PyArrayObject_fields *)self)->nd = nd;
    if (nd > 0) {
        /* create new dimensions and strides */
        ((PyArrayObject_fields *)self)->dimensions = FUNC9(2 * nd);
        if (FUNC1(self) == NULL) {
            FUNC7(ret);
            FUNC6(PyExc_MemoryError,"");
            return -1;
        }
        ((PyArrayObject_fields *)self)->strides = FUNC1(self) + nd;
        if (nd) {
            FUNC8(FUNC1(self), FUNC1(ret), nd*sizeof(npy_intp));
            FUNC8(FUNC4(self), FUNC4(ret), nd*sizeof(npy_intp));
        }
    }
    else {
        ((PyArrayObject_fields *)self)->dimensions = NULL;
        ((PyArrayObject_fields *)self)->strides = NULL;
    }
    FUNC7(ret);
    FUNC5(self, NPY_ARRAY_C_CONTIGUOUS | NPY_ARRAY_F_CONTIGUOUS);
    return 0;
}