#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* descr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * names; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_2__ PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_SORTKIND ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_QUICKSORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_AxisConverter ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_SortkindConverter ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC11(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis = -1;
    NPY_SORTKIND sortkind = NPY_QUICKSORT;
    PyObject *order = NULL, *res;
    PyArray_Descr *newd, *saved=NULL;
    static char *kwlist[] = {"axis", "kind", "order", NULL};

    if (!FUNC0(args, kwds, "|O&O&O:argsort", kwlist,
                                     PyArray_AxisConverter, &axis,
                                     PyArray_SortkindConverter, &sortkind,
                                     &order)) {
        return NULL;
    }
    if (order == Py_None) {
        order = NULL;
    }
    if (order != NULL) {
        PyObject *new_name;
        PyObject *_numpy_internal;
        saved = FUNC2(self);
        if (!FUNC5(saved)) {
            FUNC6(PyExc_ValueError, "Cannot specify "
                            "order when the array has no fields.");
            return NULL;
        }
        _numpy_internal = FUNC7("numpy.core._internal");
        if (_numpy_internal == NULL) {
            return NULL;
        }
        new_name = FUNC8(_numpy_internal, "_newnames",
                                       "OO", saved, order);
        FUNC9(_numpy_internal);
        if (new_name == NULL) {
            return NULL;
        }
        newd = FUNC3(saved);
        FUNC9(newd->names);
        newd->names = new_name;
        ((PyArrayObject_fields *)self)->descr = newd;
    }

    res = FUNC1(self, axis, sortkind);
    if (order != NULL) {
        FUNC10(FUNC2(self));
        ((PyArrayObject_fields *)self)->descr = saved;
    }
    return FUNC4((PyArrayObject *)res);
}