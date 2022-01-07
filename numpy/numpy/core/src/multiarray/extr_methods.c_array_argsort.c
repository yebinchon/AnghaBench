
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* descr; } ;
struct TYPE_9__ {int * names; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_2__ PyArrayObject_fields ;
typedef int PyArrayObject ;
typedef int NPY_SORTKIND ;


 int NPY_QUICKSORT ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int ,int*,int ,int *,int **) ;
 int * PyArray_ArgSort (int *,int,int ) ;
 int PyArray_AxisConverter ;
 TYPE_1__* PyArray_DESCR (int *) ;
 TYPE_1__* PyArray_DescrNew (TYPE_1__*) ;
 int * PyArray_Return (int *) ;
 int PyArray_SortkindConverter ;
 int PyDataType_HASFIELDS (TYPE_1__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyImport_ImportModule (char*) ;
 int * PyObject_CallMethod (int *,char*,char*,TYPE_1__*,int *) ;
 int Py_DECREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (TYPE_1__*) ;

__attribute__((used)) static PyObject *
array_argsort(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int axis = -1;
    NPY_SORTKIND sortkind = NPY_QUICKSORT;
    PyObject *order = ((void*)0), *res;
    PyArray_Descr *newd, *saved=((void*)0);
    static char *kwlist[] = {"axis", "kind", "order", ((void*)0)};

    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|O&O&O:argsort", kwlist,
                                     PyArray_AxisConverter, &axis,
                                     PyArray_SortkindConverter, &sortkind,
                                     &order)) {
        return ((void*)0);
    }
    if (order == Py_None) {
        order = ((void*)0);
    }
    if (order != ((void*)0)) {
        PyObject *new_name;
        PyObject *_numpy_internal;
        saved = PyArray_DESCR(self);
        if (!PyDataType_HASFIELDS(saved)) {
            PyErr_SetString(PyExc_ValueError, "Cannot specify "
                            "order when the array has no fields.");
            return ((void*)0);
        }
        _numpy_internal = PyImport_ImportModule("numpy.core._internal");
        if (_numpy_internal == ((void*)0)) {
            return ((void*)0);
        }
        new_name = PyObject_CallMethod(_numpy_internal, "_newnames",
                                       "OO", saved, order);
        Py_DECREF(_numpy_internal);
        if (new_name == ((void*)0)) {
            return ((void*)0);
        }
        newd = PyArray_DescrNew(saved);
        Py_DECREF(newd->names);
        newd->names = new_name;
        ((PyArrayObject_fields *)self)->descr = newd;
    }

    res = PyArray_ArgSort(self, axis, sortkind);
    if (order != ((void*)0)) {
        Py_XDECREF(PyArray_DESCR(self));
        ((PyArrayObject_fields *)self)->descr = saved;
    }
    return PyArray_Return((PyArrayObject *)res);
}
