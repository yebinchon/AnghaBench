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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_SelectkindConverter ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC11(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis=-1;
    int val;
    NPY_SELECTKIND sortkind = NPY_INTROSELECT;
    PyObject *order = NULL;
    PyArray_Descr *saved = NULL;
    PyArray_Descr *newd;
    static char *kwlist[] = {"kth", "axis", "kind", "order", NULL};
    PyArrayObject * ktharray;
    PyObject * kthobj;


    if (!FUNC0(args, kwds, "O|iO&O:partition", kwlist,
                                     &kthobj,
                                     &axis,
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
        saved = FUNC1(self);
        if (!FUNC5(saved)) {
            FUNC6(PyExc_ValueError, "Cannot specify " \
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
        newd = FUNC2(saved);
        FUNC9(newd->names);
        newd->names = new_name;
        ((PyArrayObject_fields *)self)->descr = newd;
    }

    ktharray = (PyArrayObject *)FUNC3(kthobj, NULL, 0, 1,
                                                NPY_ARRAY_DEFAULT, NULL);
    if (ktharray == NULL)
        return NULL;

    val = FUNC4(self, ktharray, axis, sortkind);
    FUNC9(ktharray);

    if (order != NULL) {
        FUNC10(FUNC1(self));
        ((PyArrayObject_fields *)self)->descr = saved;
    }
    if (val < 0) {
        return NULL;
    }
    Py_RETURN_NONE;
}