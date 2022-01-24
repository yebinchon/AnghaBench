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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_DescrConverter ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC14(PyArrayObject *self, PyObject *args)
{
    PyArray_Descr *newtype = NULL;
    PyObject *ret;

    if (!FUNC0(args, "|O&:__array__",
                            PyArray_DescrConverter, &newtype)) {
        FUNC13(newtype);
        return NULL;
    }

    /* convert to PyArray_Type */
    if (!FUNC2(self)) {
        PyArrayObject *new;

        FUNC12(FUNC4(self));
        new = (PyArrayObject *)FUNC9(
                &PyArray_Type,
                FUNC4(self),
                FUNC8(self),
                FUNC5(self),
                FUNC10(self),
                FUNC3(self),
                FUNC7(self),
                NULL,
                (PyObject *)self
        );
        if (new == NULL) {
            return NULL;
        }
        self = new;
    }
    else {
        FUNC12(self);
    }

    if ((newtype == NULL) || FUNC6(FUNC4(self), newtype)) {
        return (PyObject *)self;
    }
    else {
        ret = FUNC1(self, newtype, 0);
        FUNC11(self);
        return ret;
    }
}