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
typedef  int /*<<< orphan*/  NPY_SELECTKIND ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_DEFAULT ; 
 int /*<<< orphan*/  NPY_INTROSELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_AxisConverter ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_SelectkindConverter ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC12(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis = -1;
    NPY_SELECTKIND sortkind = NPY_INTROSELECT;
    PyObject *order = NULL, *res;
    PyArray_Descr *newd, *saved=NULL;
    static char *kwlist[] = {"kth", "axis", "kind", "order", NULL};
    PyObject * kthobj;
    PyArrayObject * ktharray;

    if (!FUNC0(args, kwds, "O|O&O&O:argpartition", kwlist,
                                     &kthobj,
                                     PyArray_AxisConverter, &axis,
                                     PyArray_SelectkindConverter, &sortkind,
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
        if (!FUNC6(saved)) {
            FUNC7(PyExc_ValueError, "Cannot specify "
                            "order when the array has no fields.");
            return NULL;
        }
        _numpy_internal = FUNC8("numpy.core._internal");
        if (_numpy_internal == NULL) {
            return NULL;
        }
        new_name = FUNC9(_numpy_internal, "_newnames",
                                       "OO", saved, order);
        FUNC10(_numpy_internal);
        if (new_name == NULL) {
            return NULL;
        }
        newd = FUNC3(saved);
        FUNC10(newd->names);
        newd->names = new_name;
        ((PyArrayObject_fields *)self)->descr = newd;
    }

    ktharray = (PyArrayObject *)FUNC4(kthobj, NULL, 0, 1,
                                                NPY_ARRAY_DEFAULT, NULL);
    if (ktharray == NULL)
        return NULL;

    res = FUNC1(self, ktharray, axis, sortkind);
    FUNC10(ktharray);

    if (order != NULL) {
        FUNC11(FUNC2(self));
        ((PyArrayObject_fields *)self)->descr = saved;
    }
    return FUNC5((PyArrayObject *)res);
}