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
struct TYPE_2__ {int flags; int /*<<< orphan*/ * base; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NPY_ARRAY_ALIGNED ; 
 int /*<<< orphan*/  NPY_ARRAY_OWNDATA ; 
 int /*<<< orphan*/  NPY_ARRAY_UPDATEIFCOPY ; 
 int /*<<< orphan*/  NPY_ARRAY_WARN_ON_WRITE ; 
 int /*<<< orphan*/  NPY_ARRAY_WRITEABLE ; 
 int /*<<< orphan*/  NPY_ARRAY_WRITEBACKIFCOPY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC13(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"write", "align", "uic", NULL};
    PyObject *write_flag = Py_None;
    PyObject *align_flag = Py_None;
    PyObject *uic = Py_None;
    int flagback = FUNC7(self);

    PyArrayObject_fields *fa = (PyArrayObject_fields *)self;

    if (!FUNC2(args, kwds, "|OOO:setflags", kwlist,
                                     &write_flag,
                                     &align_flag,
                                     &uic))
        return NULL;

    if (align_flag != Py_None) {
        if (FUNC10(align_flag)) {
            FUNC5(self, NPY_ARRAY_ALIGNED);
        }
        else if (FUNC1(self)) {
            FUNC6(self, NPY_ARRAY_ALIGNED);
        }
        else {
            FUNC8(PyExc_ValueError,
                            "cannot set aligned flag of mis-"
                            "aligned array to True");
            return NULL;
        }
    }

    if (uic != Py_None) {
        if (FUNC9(uic)) {
            fa->flags = flagback;
            FUNC8(PyExc_ValueError,
                            "cannot set WRITEBACKIFCOPY "
                            "flag to True");
            return NULL;
        }
        else {
            FUNC5(self, NPY_ARRAY_WRITEBACKIFCOPY);
            FUNC5(self, NPY_ARRAY_UPDATEIFCOPY);
            FUNC11(fa->base);
            fa->base = NULL;
        }
    }

    if (write_flag != Py_None) {
        if (FUNC9(write_flag)) {
            if (FUNC12(self)) {
                /*
                 * _IsWritable (and PyArray_UpdateFlags) allows flipping this,
                 * although the C-Api user who created the array may have
                 * chosen to make it non-writable for a good reason, so
                 * deprecate.
                 */
                if ((FUNC3(self) == NULL) &&
                            !FUNC4(self, NPY_ARRAY_OWNDATA) &&
                            !FUNC4(self, NPY_ARRAY_WRITEABLE)) {
                    /* 2017-05-03, NumPy 1.17.0 */
                    if (FUNC0("making a non-writeable array writeable "
                                  "is deprecated for arrays without a base "
                                  "which do not own their data.") < 0) {
                        return NULL;
                    }
                }
                FUNC6(self, NPY_ARRAY_WRITEABLE);
                FUNC5(self, NPY_ARRAY_WARN_ON_WRITE);
            }
            else {
                fa->flags = flagback;
                FUNC8(PyExc_ValueError,
                                "cannot set WRITEABLE "
                                "flag to True of this "
                                "array");
                return NULL;
            }
        }
        else {
            FUNC5(self, NPY_ARRAY_WRITEABLE);
            FUNC5(self, NPY_ARRAY_WARN_ON_WRITE);
        }
    }
    Py_RETURN_NONE;
}