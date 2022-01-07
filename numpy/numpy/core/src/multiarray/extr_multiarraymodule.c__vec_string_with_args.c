
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_32__ {int numiter; int ao; struct TYPE_32__** iters; int dimensions; int nd; } ;
typedef int Py_ssize_t ;
typedef TYPE_1__ PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_1__ PyArrayObject ;
typedef TYPE_1__ PyArrayMultiIterObject ;
typedef TYPE_1__ PyArrayIterObject ;


 int NPY_MAXARGS ;
 int PyArray_ITER_DATA (TYPE_1__*) ;
 int PyArray_ITER_NEXT (TYPE_1__*) ;
 scalar_t__ PyArray_IterNew (TYPE_1__*) ;
 scalar_t__ PyArray_MultiIterFromObjects (TYPE_1__**,int,int ) ;
 int PyArray_MultiIter_NEXT (TYPE_1__*) ;
 scalar_t__ PyArray_MultiIter_NOTDONE (TYPE_1__*) ;
 scalar_t__ PyArray_SETITEM (TYPE_1__*,int ,TYPE_1__*) ;
 scalar_t__ PyArray_SimpleNewFromDescr (int ,int ,TYPE_1__*) ;
 TYPE_1__* PyArray_ToScalar (int ,int ) ;
 int PyErr_Format (int ,char*,int) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 TYPE_1__* PyObject_CallObject (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* PySequence_GetItem (TYPE_1__*,int) ;
 int PySequence_Size (TYPE_1__*) ;
 TYPE_1__* PyTuple_New (int) ;
 int PyTuple_SetItem (TYPE_1__*,int,TYPE_1__*) ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_XDECREF (TYPE_1__*) ;

__attribute__((used)) static PyObject *
_vec_string_with_args(PyArrayObject* char_array, PyArray_Descr* type,
                      PyObject* method, PyObject* args)
{
    PyObject* broadcast_args[NPY_MAXARGS];
    PyArrayMultiIterObject* in_iter = ((void*)0);
    PyArrayObject* result = ((void*)0);
    PyArrayIterObject* out_iter = ((void*)0);
    Py_ssize_t i, n, nargs;

    nargs = PySequence_Size(args) + 1;
    if (nargs == -1 || nargs > NPY_MAXARGS) {
        PyErr_Format(PyExc_ValueError,
                "len(args) must be < %d", NPY_MAXARGS - 1);
        Py_DECREF(type);
        goto err;
    }

    broadcast_args[0] = (PyObject*)char_array;
    for (i = 1; i < nargs; i++) {
        PyObject* item = PySequence_GetItem(args, i-1);
        if (item == ((void*)0)) {
            Py_DECREF(type);
            goto err;
        }
        broadcast_args[i] = item;
        Py_DECREF(item);
    }
    in_iter = (PyArrayMultiIterObject*)PyArray_MultiIterFromObjects
        (broadcast_args, nargs, 0);
    if (in_iter == ((void*)0)) {
        Py_DECREF(type);
        goto err;
    }
    n = in_iter->numiter;

    result = (PyArrayObject*)PyArray_SimpleNewFromDescr(in_iter->nd,
            in_iter->dimensions, type);
    if (result == ((void*)0)) {
        goto err;
    }

    out_iter = (PyArrayIterObject*)PyArray_IterNew((PyObject*)result);
    if (out_iter == ((void*)0)) {
        goto err;
    }

    while (PyArray_MultiIter_NOTDONE(in_iter)) {
        PyObject* item_result;
        PyObject* args_tuple = PyTuple_New(n);
        if (args_tuple == ((void*)0)) {
            goto err;
        }

        for (i = 0; i < n; i++) {
            PyArrayIterObject* it = in_iter->iters[i];
            PyObject* arg = PyArray_ToScalar(PyArray_ITER_DATA(it), it->ao);
            if (arg == ((void*)0)) {
                Py_DECREF(args_tuple);
                goto err;
            }

            PyTuple_SetItem(args_tuple, i, arg);
        }

        item_result = PyObject_CallObject(method, args_tuple);
        Py_DECREF(args_tuple);
        if (item_result == ((void*)0)) {
            goto err;
        }

        if (PyArray_SETITEM(result, PyArray_ITER_DATA(out_iter), item_result)) {
            Py_DECREF(item_result);
            PyErr_SetString( PyExc_TypeError,
                    "result array type does not match underlying function");
            goto err;
        }
        Py_DECREF(item_result);

        PyArray_MultiIter_NEXT(in_iter);
        PyArray_ITER_NEXT(out_iter);
    }

    Py_DECREF(in_iter);
    Py_DECREF(out_iter);

    return (PyObject*)result;

 err:
    Py_XDECREF(in_iter);
    Py_XDECREF(out_iter);
    Py_XDECREF(result);

    return 0;
}
