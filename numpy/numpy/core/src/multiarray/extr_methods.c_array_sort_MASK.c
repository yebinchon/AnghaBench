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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_SortkindConverter ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static PyObject *
FUNC10(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis=-1;
    int val;
    NPY_SORTKIND sortkind = NPY_QUICKSORT;
    PyObject *order = NULL;
    PyArray_Descr *saved = NULL;
    PyArray_Descr *newd;
    static char *kwlist[] = {"axis", "kind", "order", NULL};

    if (!FUNC0(args, kwds, "|iO&O:sort", kwlist,
                                    &axis,
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
        saved = FUNC1(self);
        if (!FUNC4(saved)) {
            FUNC5(PyExc_ValueError, "Cannot specify " \
                            "order when the array has no fields.");
            return NULL;
        }
        _numpy_internal = FUNC6("numpy.core._internal");
        if (_numpy_internal == NULL) {
            return NULL;
        }
        new_name = FUNC7(_numpy_internal, "_newnames",
                                       "OO", saved, order);
        FUNC8(_numpy_internal);
        if (new_name == NULL) {
            return NULL;
        }
        newd = FUNC2(saved);
        FUNC8(newd->names);
        newd->names = new_name;
        ((PyArrayObject_fields *)self)->descr = newd;
    }

    val = FUNC3(self, axis, sortkind);
    if (order != NULL) {
        FUNC9(FUNC1(self));
        ((PyArrayObject_fields *)self)->descr = saved;
    }
    if (val < 0) {
        return NULL;
    }
    Py_RETURN_NONE;
}